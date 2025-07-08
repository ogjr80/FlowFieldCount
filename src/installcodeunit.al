// // codeunit 50100 Installation
// // {
// //     Subtype = Install;

// //     trigger OnInstallAppPerCompany()
// //     var
// //         myAppInfo: ModuleInfo;
// //     begin
// //         NavApp.GetCurrentModuleInfo(myAppInfo);
// //         if myAppInfo.DataVersion = Version.Create(0, 0, 0, 0) then
// //             HandleFreshInstall()
// //         else
// //             HandleReinstall();
// //     end;

// //     local procedure HandleFreshInstall()
// //     begin
// //         CreateSalespeople();
// //     end;

// //     local procedure HandleReinstall()
// //     begin
// //     end;

// //     local procedure CreateSalespeople()
// //     var
// //         SalespersonPurchaser: Record "Salesperson/Purchaser";
// //         Counter: Integer;
// //         SalespersonCode: Code[20];
// //     begin
// //         for Counter := 1 to 5 do begin
// //             Clear(SalespersonPurchaser);
// //             SalespersonCode := 'SP_' + Format(Counter);
// //             if not SalespersonPurchaser.Get(SalespersonCode) then begin
// //                 SalespersonPurchaser.Code := SalespersonCode;
// //                 SalespersonPurchaser.Name := 'Salesperson ' + Format(Counter);
// //                 SalespersonPurchaser.Insert(true);
// //             end;
// //         end;
// //     end;
// // }

// codeunit 50100 Upgrade
// {
//     Subtype = Upgrade;
//     trigger OnCheckPreconditionsPerCompany();
//     var
//         myInfo: ModuleInfo;
//     begin
//         if NavApp.GetCurrentModuleInfo(myInfo) then
//             if myInfo.DataVersion = Version.Create(1, 0, 0, 1) then
//                 error('The upgrade is not compatible');
//     end;

//     trigger OnUpgradePerCompany()
//     begin
//         UpdateSalespeople();
//     end;

//     local procedure UpdateSalespeople()
//     var
//         SalespersonPurchaser: Record "Salesperson/Purchaser";
//         Counter: Integer;
//         OldSalespersonCode, NewSalespersonCode : code[20];
//     begin
//         for Counter := 1 to 5 do begin
//             clear(SalespersonPurchaser);
//             OldSalespersonCode := 'SP_' + Format(Counter);
//             NewSalespersonCode := 'SP ' + Format(Counter);
//             if SalespersonPurchaser.Get(OldSalespersonCode) then
//                 SalespersonPurchaser.Rename(NewSalespersonCode);
//         end;
//     end;
// }