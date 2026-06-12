--!strict

const React = require("@game/ReplicatedFirst/Packages/React/React")
const Table = require("@game/ReplicatedFirst/Packages/TableUtility/TableUtility")
const Signal = require("@game/ReplicatedFirst/Packages/Signal/Signal")

type Connection = Signal.Connection

const create = React.createElement

const Types = require("../../Types")

type LogNode = Types.LogNode

const Context = require("./Context")

const MessageOut = require("../../MessageOut")

const formatContext = require("../../formatContext")

export type Props = {
	children: { React.Element<any> }?
}

const function Interface(props: Props)
	const guiReference: React.Ref<ScreenGui?> = React.useRef(nil)
	const containerReference: React.Ref<Frame?> = React.useRef(nil)
	const dragDetectorReference: React.Ref<UIDragDetector?> = React.useRef(nil)
	
	React.useEffect(function() : () -> ()
		const gui: ScreenGui?, container: Frame?, dragDetector: UIDragDetector? =
			guiReference.current, containerReference.current, dragDetectorReference.current
		if gui and container and dragDetector then
			dragDetector.BoundingUI = gui
			dragDetector.ReferenceUIInstance = container
		end
		
		return function() : () end
	end, { guiReference.current, containerReference.current, dragDetectorReference.current } :: { any })
	
	const logElements: { React.ReactElement<Context.Props, any> }, setLogElements: React.SetState<{ React.ReactElement<Context.Props, any> }> = React.useState({})
	
	const messageAdded = React.useCallback(function(message: string, messageType: Enum.MessageType, context: { [string]: any }?) : ()
		if not context then
			return
		end
		
		setLogElements(function(currentElements: { React.ReactElement<Context.Props, any> }) : { React.ReactElement<Context.Props, any> }
			currentElements = table.clone(currentElements)
			
			table.insert(currentElements, create(Context, {
				Key = message,
				Value = "",
				Context = formatContext(context),
				LeftPadding = 0,
			}))
			
			return currentElements
		end)
	end, {})
	
	React.useEffect(function() : () -> ()
		const connection: Connection = MessageOut:Connect(messageAdded)
		
		return function() : ()
			connection:Disconnect()
		end
	end, {})
	
	return create("ScreenGui", {
		ref = guiReference,
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
	}, {
		Container = create("Frame", {
			ref = containerReference,
			Size = UDim2.new(0, 852, 0, 724),
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			BackgroundTransparency = 0.1,
			Position = UDim2.new(0.27, 0, 0.12, 0),
			BorderSizePixel = 0,
			BackgroundColor3 = Color3.fromRGB(43, 36, 44),
		}, Table.merge({
			Corner = create("UICorner", {
				CornerRadius = UDim.new(0, 12),
			}),
			Shadow = create("UIShadow", {
				BlurRadius = UDim.new(0, 20),
				Transparency = 0.5,
			}),
			Stroke = create("UIStroke", {
				Color = Color3.fromRGB(212, 173, 217),
			}),
			Padding = create("UIPadding", {
				PaddingTop = UDim.new(0, 6),
				PaddingBottom = UDim.new(0, 6),
				PaddingLeft = UDim.new(0, 6),
				PaddingRight = UDim.new(0, 6),
			}),
			ListLayout = create("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, 6),
			}),
			UIDragDetector = create("UIDragDetector", {
				ref = dragDetectorReference,
				Enabled = true,
			}),
		}, logElements)),
	})
end

return Interface