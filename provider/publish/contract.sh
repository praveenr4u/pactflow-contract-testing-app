curl -v --request POST  \
     --url 'http://localhost:8000/contracts/publish' \
     --header 'Authorization: Basic cGFjdDpwYWN0' \
     --header 'Content-Type: application/json' \
     --header 'Accept: application/json' \
     --data-raw '
     {
       "pacticipantName": "EmployerServiceAPI",
       "pacticipantVersionNumber": "v3",
       "branch": "master",
       "tags": ["main"],
       "buildUrl": "https://ci/builds/1234",
       "contracts": [
         {
           "consumerName": "EmployerServiceAPI",
           "providerName": "EmployeeServiceAPI",
           "specification": "pact",
           "contentType": "application/json",
           "content": "ewogICJjb25zdW1lciI6IHsKICAgICJuYW1lIjogIkVtcGxveWVyU2VydmljZUFQSSIKICB9LAogICJpbnRlcmFjdGlvbnMiOiBbCiAgICB7CiAgICAgICJjb21tZW50cyI6IHsKICAgICAgICAidGVzdG5hbWUiOiAiY29tLmF1dG9tYXRpb25mcmF0ZXJuaXR5LkNvbnN1bWVyUGFjdFRlc3QudGVzdEdldEVtcGxveWVlQnlFbXBJRChNb2NrU2VydmVyKSIsCiAgICAgICAgInRleHQiOiBbCgogICAgICAgIF0KICAgICAgfSwKICAgICAgImRlc2NyaXB0aW9uIjogImdldCBlbXBsb3llZSBieSBlbXAgaWQgd2hpY2ggZXhpc3RzIiwKICAgICAgImtleSI6ICIxZDk5N2FhMCIsCiAgICAgICJwZW5kaW5nIjogZmFsc2UsCiAgICAgICJwcm92aWRlclN0YXRlcyI6IFsKICAgICAgICB7CiAgICAgICAgICAibmFtZSI6ICJlbXAgaWQgZXhpc3RzIgogICAgICAgIH0KICAgICAgXSwKICAgICAgInJlcXVlc3QiOiB7CiAgICAgICAgIm1ldGhvZCI6ICJHRVQiLAogICAgICAgICJwYXRoIjogIi9lbXBsb3llZS8xIgogICAgICB9LAogICAgICAicmVzcG9uc2UiOiB7CiAgICAgICAgImJvZHkiOiB7CiAgICAgICAgICAiY29udGVudCI6IHsKICAgICAgICAgICAgImFnZSI6IDc4LAogICAgICAgICAgICAiZGVwYXJ0bWVudCI6ICJIUiIsCiAgICAgICAgICAgICJkZXNpZ25hdGlvbiI6ICJNYW5hZ2VyIiwKICAgICAgICAgICAgImVtYWlsIjogImFAYS5jb20iLAogICAgICAgICAgICAiZW1wSWQiOiAxLAogICAgICAgICAgICAiaWQiOiAxLAogICAgICAgICAgICAibmFtZSI6ICJBa2FzaCIsCiAgICAgICAgICAgICJwaG9uZSI6ICIzNDI0MjQiLAogICAgICAgICAgICAic2FsYXJ5IjogIjEwMCIKICAgICAgICAgIH0sCiAgICAgICAgICAiY29udGVudFR5cGUiOiAiYXBwbGljYXRpb24vanNvbjsgY2hhcnNldD11dGYtOCIsCiAgICAgICAgICAiZW5jb2RlZCI6IGZhbHNlCiAgICAgICAgfSwKICAgICAgICAiaGVhZGVycyI6IHsKICAgICAgICAgICJDb250ZW50LVR5cGUiOiBbCiAgICAgICAgICAgICJhcHBsaWNhdGlvbi9qc29uOyBjaGFyc2V0PXV0Zi04IgogICAgICAgICAgXQogICAgICAgIH0sCiAgICAgICAgIm1hdGNoaW5nUnVsZXMiOiB7CiAgICAgICAgICAiYm9keSI6IHsKICAgICAgICAgICAgIiQuYWdlIjogewogICAgICAgICAgICAgICJjb21iaW5lIjogIkFORCIsCiAgICAgICAgICAgICAgIm1hdGNoZXJzIjogWwogICAgICAgICAgICAgICAgewogICAgICAgICAgICAgICAgICAibWF0Y2giOiAiaW50ZWdlciIKICAgICAgICAgICAgICAgIH0KICAgICAgICAgICAgICBdCiAgICAgICAgICAgIH0sCiAgICAgICAgICAgICIkLmRlcGFydG1lbnQiOiB7CiAgICAgICAgICAgICAgImNvbWJpbmUiOiAiQU5EIiwKICAgICAgICAgICAgICAibWF0Y2hlcnMiOiBbCiAgICAgICAgICAgICAgICB7CiAgICAgICAgICAgICAgICAgICJtYXRjaCI6ICJ0eXBlIgogICAgICAgICAgICAgICAgfQogICAgICAgICAgICAgIF0KICAgICAgICAgICAgfSwKICAgICAgICAgICAgIiQuZGVzaWduYXRpb24iOiB7CiAgICAgICAgICAgICAgImNvbWJpbmUiOiAiQU5EIiwKICAgICAgICAgICAgICAibWF0Y2hlcnMiOiBbCiAgICAgICAgICAgICAgICB7CiAgICAgICAgICAgICAgICAgICJtYXRjaCI6ICJ0eXBlIgogICAgICAgICAgICAgICAgfQogICAgICAgICAgICAgIF0KICAgICAgICAgICAgfSwKICAgICAgICAgICAgIiQuZW1haWwiOiB7CiAgICAgICAgICAgICAgImNvbWJpbmUiOiAiQU5EIiwKICAgICAgICAgICAgICAibWF0Y2hlcnMiOiBbCiAgICAgICAgICAgICAgICB7CiAgICAgICAgICAgICAgICAgICJtYXRjaCI6ICJ0eXBlIgogICAgICAgICAgICAgICAgfQogICAgICAgICAgICAgIF0KICAgICAgICAgICAgfSwKICAgICAgICAgICAgIiQuZW1wSWQiOiB7CiAgICAgICAgICAgICAgImNvbWJpbmUiOiAiQU5EIiwKICAgICAgICAgICAgICAibWF0Y2hlcnMiOiBbCiAgICAgICAgICAgICAgICB7CiAgICAgICAgICAgICAgICAgICJtYXRjaCI6ICJpbnRlZ2VyIgogICAgICAgICAgICAgICAgfQogICAgICAgICAgICAgIF0KICAgICAgICAgICAgfSwKICAgICAgICAgICAgIiQuaWQiOiB7CiAgICAgICAgICAgICAgImNvbWJpbmUiOiAiQU5EIiwKICAgICAgICAgICAgICAibWF0Y2hlcnMiOiBbCiAgICAgICAgICAgICAgICB7CiAgICAgICAgICAgICAgICAgICJtYXRjaCI6ICJpbnRlZ2VyIgogICAgICAgICAgICAgICAgfQogICAgICAgICAgICAgIF0KICAgICAgICAgICAgfSwKICAgICAgICAgICAgIiQubmFtZSI6IHsKICAgICAgICAgICAgICAiY29tYmluZSI6ICJBTkQiLAogICAgICAgICAgICAgICJtYXRjaGVycyI6IFsKICAgICAgICAgICAgICAgIHsKICAgICAgICAgICAgICAgICAgIm1hdGNoIjogInR5cGUiCiAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgICAgXQogICAgICAgICAgICB9LAogICAgICAgICAgICAiJC5waG9uZSI6IHsKICAgICAgICAgICAgICAiY29tYmluZSI6ICJBTkQiLAogICAgICAgICAgICAgICJtYXRjaGVycyI6IFsKICAgICAgICAgICAgICAgIHsKICAgICAgICAgICAgICAgICAgIm1hdGNoIjogInR5cGUiCiAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgICAgXQogICAgICAgICAgICB9LAogICAgICAgICAgICAiJC5zYWxhcnkiOiB7CiAgICAgICAgICAgICAgImNvbWJpbmUiOiAiQU5EIiwKICAgICAgICAgICAgICAibWF0Y2hlcnMiOiBbCiAgICAgICAgICAgICAgICB7CiAgICAgICAgICAgICAgICAgICJtYXRjaCI6ICJ0eXBlIgogICAgICAgICAgICAgICAgfQogICAgICAgICAgICAgIF0KICAgICAgICAgICAgfQogICAgICAgICAgfQogICAgICAgIH0sCiAgICAgICAgInN0YXR1cyI6IDIwMAogICAgICB9LAogICAgICAidHJhbnNwb3J0IjogImh0dHBzIiwKICAgICAgInR5cGUiOiAiU3luY2hyb25vdXMvSFRUUCIKICAgIH0sCiAgICB7CiAgICAgICJjb21tZW50cyI6IHsKICAgICAgICAidGVzdG5hbWUiOiAiY29tLmF1dG9tYXRpb25mcmF0ZXJuaXR5LkNvbnN1bWVyUGFjdFRlc3QudGVzdFJldHVybkVycm9yX1doZW5FbXBsb3llZUlETm90Rm91bmQoTW9ja1NlcnZlcikiLAogICAgICAgICJ0ZXh0IjogWwoKICAgICAgICBdCiAgICAgIH0sCiAgICAgICJkZXNjcmlwdGlvbiI6ICJnZXQgZW1wbG95ZWUgYnkgZW1wIGlkIHdoaWNoIGRvZXMgbm90IGV4aXN0IiwKICAgICAgImtleSI6ICI5ODU3MTYwIiwKICAgICAgInBlbmRpbmciOiBmYWxzZSwKICAgICAgInByb3ZpZGVyU3RhdGVzIjogWwogICAgICAgIHsKICAgICAgICAgICJuYW1lIjogImVtcGxveWVlIGlkIGRvZXMgbm90IGV4aXN0IgogICAgICAgIH0KICAgICAgXSwKICAgICAgInJlcXVlc3QiOiB7CiAgICAgICAgIm1ldGhvZCI6ICJHRVQiLAogICAgICAgICJwYXRoIjogIi9lbXBsb3llZS85OTk5IgogICAgICB9LAogICAgICAicmVzcG9uc2UiOiB7CiAgICAgICAgInN0YXR1cyI6IDQwNAogICAgICB9LAogICAgICAidHJhbnNwb3J0IjogImh0dHBzIiwKICAgICAgInR5cGUiOiAiU3luY2hyb25vdXMvSFRUUCIKICAgIH0sCiAgICB7CiAgICAgICJjb21tZW50cyI6IHsKICAgICAgICAidGVzdG5hbWUiOiAiY29tLmF1dG9tYXRpb25mcmF0ZXJuaXR5LkNvbnN1bWVyUGFjdFRlc3QudGVzdEdldEFsbEVtcGxveWVlKE1vY2tTZXJ2ZXIpIiwKICAgICAgICAidGV4dCI6IFsKCiAgICAgICAgXQogICAgICB9LAogICAgICAiZGVzY3JpcHRpb24iOiAiZ2V0IGFsbCBlbXBsb3llZXMiLAogICAgICAia2V5IjogIjEwMGNhMWMyIiwKICAgICAgInBlbmRpbmciOiBmYWxzZSwKICAgICAgInByb3ZpZGVyU3RhdGVzIjogWwogICAgICAgIHsKICAgICAgICAgICJuYW1lIjogInNvbWUgZW1wbG95ZWUgZXhpc3RzIgogICAgICAgIH0KICAgICAgXSwKICAgICAgInJlcXVlc3QiOiB7CiAgICAgICAgIm1ldGhvZCI6ICJHRVQiLAogICAgICAgICJwYXRoIjogIi9lbXBsb3llZSIKICAgICAgfSwKICAgICAgInJlc3BvbnNlIjogewogICAgICAgICJib2R5IjogewogICAgICAgICAgImNvbnRlbnQiOiBbCiAgICAgICAgICAgIHsKICAgICAgICAgICAgICAiYWdlIjogNzgsCiAgICAgICAgICAgICAgImRlcGFydG1lbnQiOiAiSFIiLAogICAgICAgICAgICAgICJkZXNpZ25hdGlvbiI6ICJNYW5hZ2VyIiwKICAgICAgICAgICAgICAiZW1haWwiOiAiYUBhLmNvbSIsCiAgICAgICAgICAgICAgImVtcElkIjogMSwKICAgICAgICAgICAgICAiaWQiOiAxLAogICAgICAgICAgICAgICJuYW1lIjogIkFrYXNoIiwKICAgICAgICAgICAgICAicGhvbmUiOiAiMzQyNDI0IiwKICAgICAgICAgICAgICAic2FsYXJ5IjogIjEwMCIKICAgICAgICAgICAgfSwKICAgICAgICAgICAgewogICAgICAgICAgICAgICJhZ2UiOiA3OCwKICAgICAgICAgICAgICAiZGVwYXJ0bWVudCI6ICJIUiIsCiAgICAgICAgICAgICAgImRlc2lnbmF0aW9uIjogIk1hbmFnZXIiLAogICAgICAgICAgICAgICJlbWFpbCI6ICJhQGEuY29tIiwKICAgICAgICAgICAgICAiZW1wSWQiOiAxLAogICAgICAgICAgICAgICJpZCI6IDEsCiAgICAgICAgICAgICAgIm5hbWUiOiAiQWthc2giLAogICAgICAgICAgICAgICJwaG9uZSI6ICIzNDI0MjQiLAogICAgICAgICAgICAgICJzYWxhcnkiOiAiMTAwIgogICAgICAgICAgICB9CiAgICAgICAgICBdLAogICAgICAgICAgImNvbnRlbnRUeXBlIjogImFwcGxpY2F0aW9uL2pzb247IGNoYXJzZXQ9dXRmLTgiLAogICAgICAgICAgImVuY29kZWQiOiBmYWxzZQogICAgICAgIH0sCiAgICAgICAgImhlYWRlcnMiOiB7CiAgICAgICAgICAiQ29udGVudC1UeXBlIjogWwogICAgICAgICAgICAiYXBwbGljYXRpb24vanNvbjsgY2hhcnNldD11dGYtOCIKICAgICAgICAgIF0KICAgICAgICB9LAogICAgICAgICJtYXRjaGluZ1J1bGVzIjogewogICAgICAgICAgImJvZHkiOiB7CiAgICAgICAgICAgICIkIjogewogICAgICAgICAgICAgICJjb21iaW5lIjogIkFORCIsCiAgICAgICAgICAgICAgIm1hdGNoZXJzIjogWwogICAgICAgICAgICAgICAgewogICAgICAgICAgICAgICAgICAibWF0Y2giOiAidHlwZSIsCiAgICAgICAgICAgICAgICAgICJtaW4iOiAyCiAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgICAgXQogICAgICAgICAgICB9LAogICAgICAgICAgICAiJFsqXS5hZ2UiOiB7CiAgICAgICAgICAgICAgImNvbWJpbmUiOiAiQU5EIiwKICAgICAgICAgICAgICAibWF0Y2hlcnMiOiBbCiAgICAgICAgICAgICAgICB7CiAgICAgICAgICAgICAgICAgICJtYXRjaCI6ICJpbnRlZ2VyIgogICAgICAgICAgICAgICAgfQogICAgICAgICAgICAgIF0KICAgICAgICAgICAgfSwKICAgICAgICAgICAgIiRbKl0uZGVwYXJ0bWVudCI6IHsKICAgICAgICAgICAgICAiY29tYmluZSI6ICJBTkQiLAogICAgICAgICAgICAgICJtYXRjaGVycyI6IFsKICAgICAgICAgICAgICAgIHsKICAgICAgICAgICAgICAgICAgIm1hdGNoIjogInR5cGUiCiAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgICAgXQogICAgICAgICAgICB9LAogICAgICAgICAgICAiJFsqXS5kZXNpZ25hdGlvbiI6IHsKICAgICAgICAgICAgICAiY29tYmluZSI6ICJBTkQiLAogICAgICAgICAgICAgICJtYXRjaGVycyI6IFsKICAgICAgICAgICAgICAgIHsKICAgICAgICAgICAgICAgICAgIm1hdGNoIjogInR5cGUiCiAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgICAgXQogICAgICAgICAgICB9LAogICAgICAgICAgICAiJFsqXS5lbWFpbCI6IHsKICAgICAgICAgICAgICAiY29tYmluZSI6ICJBTkQiLAogICAgICAgICAgICAgICJtYXRjaGVycyI6IFsKICAgICAgICAgICAgICAgIHsKICAgICAgICAgICAgICAgICAgIm1hdGNoIjogInR5cGUiCiAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgICAgXQogICAgICAgICAgICB9LAogICAgICAgICAgICAiJFsqXS5lbXBJZCI6IHsKICAgICAgICAgICAgICAiY29tYmluZSI6ICJBTkQiLAogICAgICAgICAgICAgICJtYXRjaGVycyI6IFsKICAgICAgICAgICAgICAgIHsKICAgICAgICAgICAgICAgICAgIm1hdGNoIjogImludGVnZXIiCiAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgICAgXQogICAgICAgICAgICB9LAogICAgICAgICAgICAiJFsqXS5pZCI6IHsKICAgICAgICAgICAgICAiY29tYmluZSI6ICJBTkQiLAogICAgICAgICAgICAgICJtYXRjaGVycyI6IFsKICAgICAgICAgICAgICAgIHsKICAgICAgICAgICAgICAgICAgIm1hdGNoIjogImludGVnZXIiCiAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgICAgXQogICAgICAgICAgICB9LAogICAgICAgICAgICAiJFsqXS5uYW1lIjogewogICAgICAgICAgICAgICJjb21iaW5lIjogIkFORCIsCiAgICAgICAgICAgICAgIm1hdGNoZXJzIjogWwogICAgICAgICAgICAgICAgewogICAgICAgICAgICAgICAgICAibWF0Y2giOiAidHlwZSIKICAgICAgICAgICAgICAgIH0KICAgICAgICAgICAgICBdCiAgICAgICAgICAgIH0sCiAgICAgICAgICAgICIkWypdLnBob25lIjogewogICAgICAgICAgICAgICJjb21iaW5lIjogIkFORCIsCiAgICAgICAgICAgICAgIm1hdGNoZXJzIjogWwogICAgICAgICAgICAgICAgewogICAgICAgICAgICAgICAgICAibWF0Y2giOiAidHlwZSIKICAgICAgICAgICAgICAgIH0KICAgICAgICAgICAgICBdCiAgICAgICAgICAgIH0sCiAgICAgICAgICAgICIkWypdLnNhbGFyeSI6IHsKICAgICAgICAgICAgICAiY29tYmluZSI6ICJBTkQiLAogICAgICAgICAgICAgICJtYXRjaGVycyI6IFsKICAgICAgICAgICAgICAgIHsKICAgICAgICAgICAgICAgICAgIm1hdGNoIjogInR5cGUiCiAgICAgICAgICAgICAgICB9CiAgICAgICAgICAgICAgXQogICAgICAgICAgICB9CiAgICAgICAgICB9CiAgICAgICAgfSwKICAgICAgICAic3RhdHVzIjogMjAwCiAgICAgIH0sCiAgICAgICJ0cmFuc3BvcnQiOiAiaHR0cHMiLAogICAgICAidHlwZSI6ICJTeW5jaHJvbm91cy9IVFRQIgogICAgfQogIF0sCiAgIm1ldGFkYXRhIjogewogICAgInBhY3QtanZtIjogewogICAgICAidmVyc2lvbiI6ICI0LjYuNyIKICAgIH0sCiAgICAicGFjdFNwZWNpZmljYXRpb24iOiB7CiAgICAgICJ2ZXJzaW9uIjogIjQuMCIKICAgIH0KICB9LAogICJwcm92aWRlciI6IHsKICAgICJuYW1lIjogIkVtcGxveWVlU2VydmljZUFQSSIKICB9Cn0K"
         }
       ]
     }
     '