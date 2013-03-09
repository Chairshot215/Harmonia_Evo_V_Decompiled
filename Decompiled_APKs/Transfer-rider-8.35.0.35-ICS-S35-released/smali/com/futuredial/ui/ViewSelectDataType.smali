.class public Lcom/futuredial/ui/ViewSelectDataType;
.super Lcom/futuredial/ui/ListViewCtrl;
.source "ViewSelectDataType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;
    }
.end annotation


# static fields
.field static mAccounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/futuredial/ui/AccountData;",
            ">;"
        }
    .end annotation
.end field

.field static mAccountsTask:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/futuredial/ui/AccountData;",
            ">;"
        }
    .end annotation
.end field

.field static m_phone:Lcom/futuredial/service/DMIPhone;


# instance fields
.field bChecked:Z

.field bHasAccountData:Z

.field bHasAccountTaskData:Z

.field bImportToAccount:Z

.field bImportToDevice:Z

.field importedText:Ljava/lang/String;

.field private mAccounts_exchange:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/futuredial/ui/AccountData;",
            ">;"
        }
    .end annotation
.end field

.field private mAccounts_google:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/futuredial/ui/AccountData;",
            ">;"
        }
    .end annotation
.end field

.field m_adapter:Lcom/futuredial/ui/DMISimpleAdapter;

.field m_btnBackPress:Lcom/futuredial/ui/CBtnListener;

.field m_dataTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field m_dataTypes_account:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field m_dataTypes_device:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field m_hasDTCanSelect:Z

.field m_modSelector:Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;

.field map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    sput-object v0, Lcom/futuredial/ui/ViewSelectDataType;->m_phone:Lcom/futuredial/service/DMIPhone;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/futuredial/ui/ViewSelectDataType;->mAccounts:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/futuredial/ui/ViewSelectDataType;->mAccountsTask:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    invoke-direct {p0}, Lcom/futuredial/ui/ListViewCtrl;-><init>()V

    .line 48
    new-instance v0, Lcom/futuredial/ui/CBtnListener;

    const-string v1, "com.futuredial.ui.ViewSelectYourPhone"

    invoke-direct {v0, v1}, Lcom/futuredial/ui/CBtnListener;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/futuredial/ui/ViewSelectDataType;->m_btnBackPress:Lcom/futuredial/ui/CBtnListener;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/futuredial/ui/ViewSelectDataType;->m_dataTypes:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/futuredial/ui/ViewSelectDataType;->m_dataTypes_account:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/futuredial/ui/ViewSelectDataType;->m_dataTypes_device:Ljava/util/ArrayList;

    .line 54
    iput-boolean v2, p0, Lcom/futuredial/ui/ViewSelectDataType;->bHasAccountData:Z

    .line 55
    iput-boolean v2, p0, Lcom/futuredial/ui/ViewSelectDataType;->bHasAccountTaskData:Z

    .line 56
    iput-boolean v3, p0, Lcom/futuredial/ui/ViewSelectDataType;->bImportToAccount:Z

    .line 57
    iput-boolean v3, p0, Lcom/futuredial/ui/ViewSelectDataType;->bImportToDevice:Z

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/futuredial/ui/ViewSelectDataType;->m_adapter:Lcom/futuredial/ui/DMISimpleAdapter;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/futuredial/ui/ViewSelectDataType;->importedText:Ljava/lang/String;

    .line 62
    iput-boolean v2, p0, Lcom/futuredial/ui/ViewSelectDataType;->m_hasDTCanSelect:Z

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/futuredial/ui/ViewSelectDataType;->mAccounts_google:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/futuredial/ui/ViewSelectDataType;->mAccounts_exchange:Ljava/util/ArrayList;

    .line 102
    iput-boolean v2, p0, Lcom/futuredial/ui/ViewSelectDataType;->bChecked:Z

    .line 235
    new-instance v0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;

    invoke-direct {v0, p0}, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;-><init>(Lcom/futuredial/ui/ViewSelectDataType;)V

    iput-object v0, p0, Lcom/futuredial/ui/ViewSelectDataType;->m_modSelector:Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;

    .line 77
    const-string v0, "[select data types to import]"

    iput-object v0, p0, Lcom/futuredial/ui/ViewSelectDataType;->ViewName:Ljava/lang/String;

    .line 78
    return-void
.end method

.method private add_data_type(I)V
    .locals 13
    .parameter "index"

    .prologue
    const v12, 0x7f060218

    const v11, 0x7f060216

    const v10, 0x7f060217

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 315
    iget-object v6, p0, Lcom/futuredial/ui/ViewSelectDataType;->ViewName:Ljava/lang/String;

    const-string v7, "add_data_type in"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    sget-object v6, Lcom/futuredial/ui/ViewSelectDataType;->m_phone:Lcom/futuredial/service/DMIPhone;

    iget-object v6, v6, Lcom/futuredial/service/DMIPhone;->m_supportMods:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;

    .line 317
    .local v4, module:Lcom/futuredial/service/DMIPhone$DMIPhoneModule;
    iget-object v6, v4, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_moduleIndex:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 318
    .local v5, module_index:I
    invoke-virtual {v4}, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->get_moduleName()Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, dataTypeName:Ljava/lang/String;
    packed-switch v5, :pswitch_data_0

    .line 415
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/futuredial/ui/ViewSelectDataType;->ViewName:Ljava/lang/String;

    const-string v7, "add_data_type Out"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    return-void

    .line 323
    :pswitch_0
    iget-boolean v6, p0, Lcom/futuredial/ui/ViewSelectDataType;->bImportToAccount:Z

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lcom/futuredial/ui/ViewSelectDataType;->bHasAccountData:Z

    if-eqz v6, :cond_1

    .line 324
    iput-boolean v8, p0, Lcom/futuredial/ui/ViewSelectDataType;->bImportToAccount:Z

    .line 326
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 327
    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "import_to"

    invoke-virtual {p0, v10}, Lcom/futuredial/ui/ViewSelectDataType;->get_resource_string(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    const-string v6, "id_import_to"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    iget-object v6, p0, Lcom/futuredial/ui/ViewSelectDataType;->m_dataTypes_account:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    .end local v1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 334
    .local v2, map_module:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "title"

    invoke-virtual {v2, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    const-string v6, "impMark"

    const-string v7, ""

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    const-string v6, "checkbox"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    const-string v6, "id"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    iget-boolean v6, v4, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_bImported:Z

    if-ne v6, v9, :cond_2

    .line 339
    const-string v6, "impMark"

    iget-object v7, p0, Lcom/futuredial/ui/ViewSelectDataType;->importedText:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const-string v6, "impMarkID"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    :cond_2
    iget-object v6, p0, Lcom/futuredial/ui/ViewSelectDataType;->m_dataTypes_account:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    iget-boolean v6, p0, Lcom/futuredial/ui/ViewSelectDataType;->bHasAccountData:Z

    if-eqz v6, :cond_0

    .line 345
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 346
    .local v3, map_spinner:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "spinner"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    iget-object v6, p0, Lcom/futuredial/ui/ViewSelectDataType;->m_dataTypes_account:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 352
    .end local v2           #map_module:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3           #map_spinner:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :pswitch_1
    iget-boolean v6, p0, Lcom/futuredial/ui/ViewSelectDataType;->bImportToAccount:Z

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Lcom/futuredial/ui/ViewSelectDataType;->bHasAccountTaskData:Z

    if-eqz v6, :cond_3

    .line 353
    iput-boolean v8, p0, Lcom/futuredial/ui/ViewSelectDataType;->bImportToAccount:Z

    .line 355
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 356
    .restart local v1       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "import_to"

    invoke-virtual {p0, v10}, Lcom/futuredial/ui/ViewSelectDataType;->get_resource_string(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    const-string v6, "id_import_to"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    iget-object v6, p0, Lcom/futuredial/ui/ViewSelectDataType;->m_dataTypes_account:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    .end local v1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 363
    .restart local v2       #map_module:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "title"

    invoke-virtual {v2, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    const-string v6, "impMark"

    const-string v7, ""

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    const-string v6, "checkbox"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    const-string v6, "id"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    iget-boolean v6, v4, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_bImported:Z

    if-ne v6, v9, :cond_4

    .line 368
    const-string v6, "impMark"

    iget-object v7, p0, Lcom/futuredial/ui/ViewSelectDataType;->importedText:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    const-string v6, "impMarkID"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    :cond_4
    iget-object v6, p0, Lcom/futuredial/ui/ViewSelectDataType;->m_dataTypes_account:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    iget-boolean v6, p0, Lcom/futuredial/ui/ViewSelectDataType;->bHasAccountTaskData:Z

    if-eqz v6, :cond_0

    .line 374
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 375
    .restart local v3       #map_spinner:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "spinner"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    iget-object v6, p0, Lcom/futuredial/ui/ViewSelectDataType;->m_dataTypes_account:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 385
    .end local v2           #map_module:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3           #map_spinner:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :pswitch_2
    iget-boolean v6, p0, Lcom/futuredial/ui/ViewSelectDataType;->bImportToDevice:Z

    if-eqz v6, :cond_5

    iget-boolean v6, p0, Lcom/futuredial/ui/ViewSelectDataType;->bHasAccountData:Z

    if-eqz v6, :cond_5

    .line 386
    iput-boolean v8, p0, Lcom/futuredial/ui/ViewSelectDataType;->bImportToDevice:Z

    .line 388
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 389
    .restart local v1       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "import_to"

    invoke-virtual {p0, v12}, Lcom/futuredial/ui/ViewSelectDataType;->get_resource_string(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    const-string v6, "id_import_to"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    iget-object v6, p0, Lcom/futuredial/ui/ViewSelectDataType;->m_dataTypes_device:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    .end local v1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_5
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 396
    .restart local v2       #map_module:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "title"

    invoke-virtual {v2, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    const-string v6, "impMark"

    const-string v7, ""

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    const/4 v6, 0x4

    if-eq v5, v6, :cond_6

    const/4 v6, 0x5

    if-ne v5, v6, :cond_7

    .line 399
    :cond_6
    const-string v6, "impMark"

    const v7, 0x7f060224

    invoke-virtual {p0, v7}, Lcom/futuredial/ui/ViewSelectDataType;->get_resource_string(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    const-string v6, "impMarkID"

    const v7, 0x7f060224

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    :cond_7
    const-string v6, "checkbox"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    const-string v6, "id"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    iget-boolean v6, v4, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_bImported:Z

    if-ne v6, v9, :cond_8

    .line 405
    const-string v6, "impMark"

    iget-object v7, p0, Lcom/futuredial/ui/ViewSelectDataType;->importedText:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    const-string v6, "impMarkID"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    :cond_8
    iget-object v6, p0, Lcom/futuredial/ui/ViewSelectDataType;->m_dataTypes_device:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 320
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getAuthenticatorDescription(Ljava/lang/String;[Landroid/accounts/AuthenticatorDescription;)Landroid/accounts/AuthenticatorDescription;
    .locals 3
    .parameter "type"
    .parameter "dictionary"

    .prologue
    .line 305
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 306
    aget-object v1, p2, v0

    iget-object v1, v1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    aget-object v1, p2, v0

    return-object v1

    .line 305
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 311
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to find matching authenticator"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static isSupportAccount(I)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 250
    const/4 v0, 0x0

    .line 251
    .local v0, bSupport:Z
    if-eqz p0, :cond_0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    .line 252
    :cond_0
    const/4 v0, 0x1

    .line 253
    :cond_1
    return v0
.end method


# virtual methods
.method GetAccountData()V
    .locals 9

    .prologue
    .line 267
    sget-object v7, Lcom/futuredial/ui/ViewSelectDataType;->mAccounts:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 268
    sget-object v7, Lcom/futuredial/ui/ViewSelectDataType;->mAccountsTask:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 269
    iget-object v7, p0, Lcom/futuredial/ui/ViewSelectDataType;->mAccounts_google:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 270
    iget-object v7, p0, Lcom/futuredial/ui/ViewSelectDataType;->mAccounts_exchange:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 272
    iget-object v7, p0, Lcom/futuredial/ui/ViewSelectDataType;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-static {v7}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v1

    .line 273
    .local v1, accountTypes:[Landroid/accounts/AuthenticatorDescription;
    iget-object v7, p0, Lcom/futuredial/ui/ViewSelectDataType;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    invoke-static {v7}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    .line 274
    .local v0, account:[Landroid/accounts/Account;
    const/4 v4, 0x0

    .line 275
    .local v4, data_google:Lcom/futuredial/ui/AccountData;
    const/4 v3, 0x0

    .line 277
    .local v3, data_exchange:Lcom/futuredial/ui/AccountData;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    array-length v7, v0

    if-ge v5, v7, :cond_2

    .line 280
    aget-object v7, v0, v5

    iget-object v6, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 281
    .local v6, systemAccountType:Ljava/lang/String;
    invoke-direct {p0, v6, v1}, Lcom/futuredial/ui/ViewSelectDataType;->getAuthenticatorDescription(Ljava/lang/String;[Landroid/accounts/AuthenticatorDescription;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v2

    .line 283
    .local v2, ad:Landroid/accounts/AuthenticatorDescription;
    iget-object v7, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    const-string v8, "com.google"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_0

    .line 284
    new-instance v4, Lcom/futuredial/ui/AccountData;

    .end local v4           #data_google:Lcom/futuredial/ui/AccountData;
    iget-object v7, p0, Lcom/futuredial/ui/ViewSelectDataType;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    aget-object v8, v0, v5

    iget-object v8, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {v4, v7, v8, v2}, Lcom/futuredial/ui/AccountData;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/accounts/AuthenticatorDescription;)V

    .line 285
    .restart local v4       #data_google:Lcom/futuredial/ui/AccountData;
    if-eqz v4, :cond_0

    .line 286
    iget-object v7, p0, Lcom/futuredial/ui/ViewSelectDataType;->mAccounts_google:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_0
    iget-object v7, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    const-string v8, "com.htc.android.mail.eas"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_1

    .line 289
    new-instance v3, Lcom/futuredial/ui/AccountData;

    .end local v3           #data_exchange:Lcom/futuredial/ui/AccountData;
    iget-object v7, p0, Lcom/futuredial/ui/ViewSelectDataType;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    aget-object v8, v0, v5

    iget-object v8, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {v3, v7, v8, v2}, Lcom/futuredial/ui/AccountData;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/accounts/AuthenticatorDescription;)V

    .line 290
    .restart local v3       #data_exchange:Lcom/futuredial/ui/AccountData;
    if-eqz v3, :cond_1

    .line 291
    iget-object v7, p0, Lcom/futuredial/ui/ViewSelectDataType;->mAccounts_exchange:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 294
    .end local v2           #ad:Landroid/accounts/AuthenticatorDescription;
    .end local v6           #systemAccountType:Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/futuredial/ui/ViewSelectDataType;->mAccounts_google:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 295
    sget-object v7, Lcom/futuredial/ui/ViewSelectDataType;->mAccounts:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/futuredial/ui/ViewSelectDataType;->mAccounts_google:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 296
    :cond_3
    iget-object v7, p0, Lcom/futuredial/ui/ViewSelectDataType;->mAccounts_exchange:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 297
    sget-object v7, Lcom/futuredial/ui/ViewSelectDataType;->mAccounts:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/futuredial/ui/ViewSelectDataType;->mAccounts_exchange:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 298
    sget-object v7, Lcom/futuredial/ui/ViewSelectDataType;->mAccountsTask:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/futuredial/ui/ViewSelectDataType;->mAccounts_exchange:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 301
    :cond_4
    return-void
.end method

.method public getCountOfSupportedAccountModule()I
    .locals 3

    .prologue
    .line 257
    const/4 v1, 0x0

    .line 258
    .local v1, nCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/futuredial/ui/ViewSelectDataType;->m_phone:Lcom/futuredial/service/DMIPhone;

    iget-object v2, v2, Lcom/futuredial/service/DMIPhone;->m_supportMods:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 259
    sget-object v2, Lcom/futuredial/ui/ViewSelectDataType;->m_phone:Lcom/futuredial/service/DMIPhone;

    iget-object v2, v2, Lcom/futuredial/service/DMIPhone;->m_supportMods:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;

    iget-object v2, v2, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->m_moduleIndex:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/futuredial/ui/ViewSelectDataType;->isSupportAccount(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 260
    add-int/lit8 v1, v1, 0x1

    .line 258
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 263
    :cond_1
    return v1
.end method

.method public isDataTypeSelected()Z
    .locals 5

    .prologue
    .line 238
    const/4 v0, 0x0

    .line 239
    .local v0, bSelected:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/futuredial/ui/ViewSelectDataType;->m_dataTypes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 240
    iget-object v3, p0, Lcom/futuredial/ui/ViewSelectDataType;->m_dataTypes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "checkbox"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 241
    .local v1, checkbox:Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 242
    check-cast v1, Ljava/lang/Boolean;

    .end local v1           #checkbox:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 243
    if-eqz v0, :cond_1

    .line 246
    :cond_0
    return v0

    .line 239
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method on_back_key()V
    .locals 2

    .prologue
    .line 596
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectDataType;->m_btnBackPress:Lcom/futuredial/ui/CBtnListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/futuredial/ui/CBtnListener;->onClick(Landroid/view/View;)V

    .line 597
    return-void
.end method

.method op_for_config_change()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method public bridge synthetic setTitleText()V
    .locals 0

    .prologue
    .line 44
    invoke-super {p0}, Lcom/futuredial/ui/ListViewCtrl;->setTitleText()V

    return-void
.end method

.method set_in_arg([Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 2
    .parameter "args"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectDataType;->ViewName:Ljava/lang/String;

    const-string v1, "set_in_arg()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectDataType;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v0, v0, Lcom/futuredial/ui/DMIUI;->m_cfgChg:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectDataType;->m_modSelector:Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;

    if-eqz v0, :cond_0

    .line 93
    :goto_0
    const-string v0, "phone_info"

    invoke-virtual {p0, v0}, Lcom/futuredial/ui/ViewSelectDataType;->has_mem(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 99
    :goto_1
    return-object v0

    .line 92
    :cond_0
    new-instance v0, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;

    invoke-direct {v0, p0}, Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;-><init>(Lcom/futuredial/ui/ViewSelectDataType;)V

    iput-object v0, p0, Lcom/futuredial/ui/ViewSelectDataType;->m_modSelector:Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;

    goto :goto_0

    .line 95
    :cond_1
    const-string v0, "phone_info"

    invoke-virtual {p0, v0}, Lcom/futuredial/ui/ViewSelectDataType;->get_mem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/futuredial/service/DMIPhone;

    sput-object v0, Lcom/futuredial/ui/ViewSelectDataType;->m_phone:Lcom/futuredial/service/DMIPhone;

    .line 97
    const v0, 0x7f060216

    invoke-virtual {p0, v0}, Lcom/futuredial/ui/ViewSelectDataType;->get_resource_string(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/ui/ViewSelectDataType;->importedText:Ljava/lang/String;

    .line 99
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1
.end method

.method set_view()Ljava/lang/Boolean;
    .locals 13

    .prologue
    .line 435
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectDataType;->ViewName:Ljava/lang/String;

    const-string v1, "set_view()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectDataType;->m_selectView:Lcom/htc/widget/HtcListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 440
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectDataType;->m_selectView:Lcom/htc/widget/HtcListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setChoiceMode(I)V

    .line 443
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/futuredial/ui/ViewSelectDataType;->set_step(I)V

    .line 444
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectDataType;->headerText:Lcom/htc/widget/HeaderBarText;

    const v1, 0x7f06025d

    invoke-virtual {p0, v1}, Lcom/futuredial/ui/ViewSelectDataType;->get_resource_string(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 446
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectDataType;->m_dataTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_1

    .line 447
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectDataType;->m_dataTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    .line 448
    .local v9, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v9}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 449
    const-string v0, "id"

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 450
    .local v8, id:Ljava/lang/Integer;
    if-eqz v8, :cond_0

    .line 451
    const-string v0, "title"

    sget-object v1, Lcom/futuredial/ui/ViewSelectDataType;->m_phone:Lcom/futuredial/service/DMIPhone;

    invoke-virtual {v1, v8}, Lcom/futuredial/service/DMIPhone;->get_modulebyID(Ljava/lang/Integer;)Lcom/futuredial/service/DMIPhone$DMIPhoneModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/futuredial/service/DMIPhone$DMIPhoneModule;->get_moduleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    .end local v8           #id:Ljava/lang/Integer;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 455
    .end local v9           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectDataType;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v0, v0, Lcom/futuredial/ui/DMIUI;->m_cfgChg:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectDataType;->m_dataTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 456
    invoke-virtual {p0}, Lcom/futuredial/ui/ViewSelectDataType;->updateUI()V

    .line 457
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectDataType;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/futuredial/ui/DMIUI;->m_cfgChg:Ljava/lang/Boolean;

    .line 484
    :goto_1
    iget-boolean v0, p0, Lcom/futuredial/ui/ViewSelectDataType;->m_hasDTCanSelect:Z

    if-eqz v0, :cond_2

    .line 486
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectDataType;->m_ibtnNext:Lcom/htc/widget/HtcFooterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setClickable(Z)V

    .line 487
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectDataType;->m_ibtnNext:Lcom/htc/widget/HtcFooterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 489
    :cond_2
    invoke-virtual {p0}, Lcom/futuredial/ui/ViewSelectDataType;->isDataTypeSelected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 490
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectDataType;->m_ibtnNext:Lcom/htc/widget/HtcFooterButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setClickable(Z)V

    .line 491
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectDataType;->m_ibtnNext:Lcom/htc/widget/HtcFooterButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 499
    :cond_3
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectDataType;->m_adapter:Lcom/futuredial/ui/DMISimpleAdapter;

    if-nez v0, :cond_4

    .line 500
    new-instance v0, Lcom/futuredial/ui/DMISimpleAdapter;

    iget-object v1, p0, Lcom/futuredial/ui/ViewSelectDataType;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v2, p0, Lcom/futuredial/ui/ViewSelectDataType;->m_dataTypes:Ljava/util/ArrayList;

    const v3, 0x7f03000a

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v12, "import_to"

    aput-object v12, v4, v5

    const/4 v5, 0x1

    const-string v12, "title"

    aput-object v12, v4, v5

    const/4 v5, 0x2

    const-string v12, "impMark"

    aput-object v12, v4, v5

    const/4 v5, 0x3

    const-string v12, "checkbox"

    aput-object v12, v4, v5

    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-direct/range {v0 .. v5}, Lcom/futuredial/ui/DMISimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/futuredial/ui/ViewSelectDataType;->m_adapter:Lcom/futuredial/ui/DMISimpleAdapter;

    .line 523
    :cond_4
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectDataType;->m_selectView:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/futuredial/ui/ViewSelectDataType;->m_adapter:Lcom/futuredial/ui/DMISimpleAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 524
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectDataType;->m_selectView:Lcom/htc/widget/HtcListView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcListView;->setRoundedCornerEnabled(ZZ)V

    .line 527
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectDataType;->m_selectView:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/futuredial/ui/ViewSelectDataType;->m_modSelector:Lcom/futuredial/ui/ViewSelectDataType$CDataTypeCheckHandler;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 587
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectDataType;->m_ibtnBack:Lcom/htc/widget/HtcFooterButton;

    iget-object v1, p0, Lcom/futuredial/ui/ViewSelectDataType;->m_btnBackPress:Lcom/futuredial/ui/CBtnListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 588
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectDataType;->m_ibtnNext:Lcom/htc/widget/HtcFooterButton;

    new-instance v1, Lcom/futuredial/ui/ViewSelectDataType$1CExtBtnListener;

    const-string v2, "com.futuredial.ui.ViewReadWriteData"

    invoke-direct {v1, p0, v2}, Lcom/futuredial/ui/ViewSelectDataType$1CExtBtnListener;-><init>(Lcom/futuredial/ui/ViewSelectDataType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 590
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectDataType;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    iget-object v0, v0, Lcom/futuredial/ui/DMIUI;->m_diagMan:Lcom/futuredial/ui/DialogManager;

    invoke-virtual {v0}, Lcom/futuredial/ui/DialogManager;->showAll()V

    .line 592
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 459
    :cond_5
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectDataType;->m_dataTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 460
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectDataType;->m_dataTypes_account:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 461
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectDataType;->m_dataTypes_device:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 463
    invoke-virtual {p0}, Lcom/futuredial/ui/ViewSelectDataType;->GetAccountData()V

    .line 464
    sget-object v0, Lcom/futuredial/ui/ViewSelectDataType;->mAccounts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 465
    .local v10, nAccountSize:I
    if-lez v10, :cond_6

    .line 466
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/futuredial/ui/ViewSelectDataType;->bHasAccountData:Z

    .line 467
    new-instance v6, Lcom/futuredial/ui/AccountData;

    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectDataType;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    const-string v1, "Phone"

    const/4 v2, 0x0

    invoke-direct {v6, v0, v1, v2}, Lcom/futuredial/ui/AccountData;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/accounts/AuthenticatorDescription;)V

    .line 468
    .local v6, data:Lcom/futuredial/ui/AccountData;
    sget-object v0, Lcom/futuredial/ui/ViewSelectDataType;->mAccounts:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    .end local v6           #data:Lcom/futuredial/ui/AccountData;
    :cond_6
    sget-object v0, Lcom/futuredial/ui/ViewSelectDataType;->mAccountsTask:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 471
    .local v11, nAccountTaskSize:I
    if-lez v11, :cond_7

    .line 472
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/futuredial/ui/ViewSelectDataType;->bHasAccountTaskData:Z

    .line 473
    new-instance v6, Lcom/futuredial/ui/AccountData;

    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectDataType;->m_parentWindow:Lcom/futuredial/ui/DMIUI;

    const-string v1, "Phone"

    const/4 v2, 0x0

    invoke-direct {v6, v0, v1, v2}, Lcom/futuredial/ui/AccountData;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/accounts/AuthenticatorDescription;)V

    .line 474
    .restart local v6       #data:Lcom/futuredial/ui/AccountData;
    sget-object v0, Lcom/futuredial/ui/ViewSelectDataType;->mAccountsTask:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    .end local v6           #data:Lcom/futuredial/ui/AccountData;
    :cond_7
    const/4 v7, 0x0

    :goto_2
    sget-object v0, Lcom/futuredial/ui/ViewSelectDataType;->m_phone:Lcom/futuredial/service/DMIPhone;

    iget-object v0, v0, Lcom/futuredial/service/DMIPhone;->m_supportMods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_8

    .line 478
    invoke-direct {p0, v7}, Lcom/futuredial/ui/ViewSelectDataType;->add_data_type(I)V

    .line 479
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/futuredial/ui/ViewSelectDataType;->m_hasDTCanSelect:Z

    .line 476
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 481
    :cond_8
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectDataType;->m_dataTypes:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/futuredial/ui/ViewSelectDataType;->m_dataTypes_account:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 482
    iget-object v0, p0, Lcom/futuredial/ui/ViewSelectDataType;->m_dataTypes:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/futuredial/ui/ViewSelectDataType;->m_dataTypes_device:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 500
    :array_0
    .array-data 0x4
        0x10t 0x0t 0x2t 0x2t
        0x22t 0x0t 0x9t 0x7ft
        0x23t 0x0t 0x9t 0x7ft
        0x24t 0x0t 0x9t 0x7ft
    .end array-data
.end method

.method updateUI()V
    .locals 6

    .prologue
    .line 419
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/futuredial/ui/ViewSelectDataType;->m_dataTypes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 420
    iget-object v4, p0, Lcom/futuredial/ui/ViewSelectDataType;->m_dataTypes:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 421
    .local v3, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "id_import_to"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 422
    const-string v4, "id_import_to"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 423
    .local v2, id_import_to:I
    const-string v4, "import_to"

    invoke-virtual {p0, v2}, Lcom/futuredial/ui/ViewSelectDataType;->get_resource_string(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    .end local v2           #id_import_to:I
    :cond_0
    const-string v4, "impMarkID"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 426
    const-string v4, "impMarkID"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 427
    .local v1, id_fileonphone:I
    const-string v4, "impMark"

    invoke-virtual {p0, v1}, Lcom/futuredial/ui/ViewSelectDataType;->get_resource_string(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    .end local v1           #id_fileonphone:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 430
    .end local v3           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    return-void
.end method
