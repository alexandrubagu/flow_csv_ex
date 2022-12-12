import Config

config :flow_csv_ex,
  generators: [
    FlowCSVEx.Generator.Name,
    FlowCSVEx.Generator.Team,
    FlowCSVEx.Generator.Company,
    FlowCSVEx.Generator.State,
    FlowCSVEx.Generator.Country,
    FlowCSVEx.Generator.Color,
    FlowCSVEx.Generator.Email,
    FlowCSVEx.Generator.Phone,
    FlowCSVEx.Generator.IpAddress,
    FlowCSVEx.Generator.Date
  ]
