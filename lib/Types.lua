
export type ScriptDispatcher = {
    States: {any?},
    Events: { (Dispatcher: ScriptDispatcher, Params: any?) -> any? },
    ScheduleConstruct: (ClassName: string) -> (PostConstruct: (Props: any, Dispatcher: ScriptDispatcher) -> nil) -> nil
}

export type WillowInstance = {
    Instance: Instance,
    Children: {WillowInstance},
    UpdateState: (StateName: string, StateValue: any?) -> {oldState: any?, newState: any?},
    DetachInstance: (WillowInstance: WillowInstance) -> nil
}

export type Debug = {

}

export type willow = {
    ScheduleConstruct: (ClassName: string, Script) -> (PostConstruct: (Props: any, Dispatcher: ScriptDispatcher) -> nil ) -> WillowInstance,
    Debbuger: Debug
}

return {}