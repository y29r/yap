--!strict

const LogService: LogService = game:GetService("LogService")

const React = require("../../../Packages/React/React")

const create = React.createElement

const Context = require("./Context")

local merge = require("../merge")
const getLogHistory = require("../../Public/getLogHistory")

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
	
	const logHistory: { getLogHistory.LogHistoryNode },
		setLogHistory: React.SetState<{ getLogHistory.LogHistoryNode }> = React.useState(getLogHistory())
	
	const messageAdded = React.useCallback(function(message: string, messageType: Enum.MessageType, context: { [string]: any }) : ()
		setLogHistory(getLogHistory())
	end, {})
	
	React.useEffect(function() : () -> ()
		const connection: RBXScriptConnection = LogService.MessageOut:Connect(messageAdded)
		
		return function() : ()
			connection:Disconnect()
		end
	end, {})
	
	const logElements: { any } = {}
	
	for index: number, value: getLogHistory.LogHistoryNode in logHistory do
		table.insert(logElements, create(Context, {
			Text = value.message,
		}))
	end
	
	--print(logHistory)
	
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
		}, merge({
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