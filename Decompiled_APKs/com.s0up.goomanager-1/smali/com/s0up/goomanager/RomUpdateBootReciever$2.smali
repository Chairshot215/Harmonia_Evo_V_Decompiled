.class Lcom/s0up/goomanager/RomUpdateBootReciever$2;
.super Landroid/os/AsyncTask;
.source "RomUpdateBootReciever.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s0up/goomanager/RomUpdateBootReciever;->checkForUpdate()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic val$mGooBoardName:Ljava/lang/String;

.field private final synthetic val$mGooDeveloperId:Ljava/lang/String;

.field private final synthetic val$mGooRomName:Ljava/lang/String;

.field private final synthetic val$mGooRomVersion:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/s0up/goomanager/RomUpdateBootReciever$2;->val$mGooDeveloperId:Ljava/lang/String;

    iput-object p2, p0, Lcom/s0up/goomanager/RomUpdateBootReciever$2;->val$mGooBoardName:Ljava/lang/String;

    iput-object p3, p0, Lcom/s0up/goomanager/RomUpdateBootReciever$2;->val$mGooRomName:Ljava/lang/String;

    iput-object p4, p0, Lcom/s0up/goomanager/RomUpdateBootReciever$2;->val$mGooRomVersion:Ljava/lang/String;

    .line 192
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/s0up/goomanager/RomUpdateBootReciever$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 4
    .parameter "params"

    .prologue
    .line 196
    new-instance v0, Lcom/s0up/goomanager/WebRequest;

    invoke-direct {v0}, Lcom/s0up/goomanager/WebRequest;-><init>()V

    .line 198
    .local v0, jsonReq:Lcom/s0up/goomanager/WebRequest;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://goo.im/json2/&action=update&ro_developerid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 199
    iget-object v3, p0, Lcom/s0up/goomanager/RomUpdateBootReciever$2;->val$mGooDeveloperId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&ro_board="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/s0up/goomanager/RomUpdateBootReciever$2;->val$mGooBoardName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&ro_rom="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 200
    iget-object v3, p0, Lcom/s0up/goomanager/RomUpdateBootReciever$2;->val$mGooRomName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&ro_version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/s0up/goomanager/RomUpdateBootReciever$2;->val$mGooRomVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 198
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/s0up/goomanager/WebRequest;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, jsonResult:Ljava/lang/String;
    return-object v1
.end method
