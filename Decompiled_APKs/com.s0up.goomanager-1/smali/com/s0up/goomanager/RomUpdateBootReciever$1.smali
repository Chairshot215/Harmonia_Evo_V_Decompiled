.class Lcom/s0up/goomanager/RomUpdateBootReciever$1;
.super Landroid/os/AsyncTask;
.source "RomUpdateBootReciever.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s0up/goomanager/RomUpdateBootReciever;->checkForGappsUpdate()Ljava/lang/String;
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
.field private final synthetic val$mGooAddonPlatform:Ljava/lang/String;

.field private final synthetic val$mGooAddonVersion:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/s0up/goomanager/RomUpdateBootReciever$1;->val$mGooAddonPlatform:Ljava/lang/String;

    iput-object p2, p0, Lcom/s0up/goomanager/RomUpdateBootReciever$1;->val$mGooAddonVersion:Ljava/lang/String;

    .line 136
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

    invoke-virtual {p0, p1}, Lcom/s0up/goomanager/RomUpdateBootReciever$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 5
    .parameter "params"

    .prologue
    .line 140
    new-instance v0, Lcom/s0up/goomanager/WebRequest;

    invoke-direct {v0}, Lcom/s0up/goomanager/WebRequest;-><init>()V

    .line 141
    .local v0, jsonReq:Lcom/s0up/goomanager/WebRequest;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GOO: http://goo.im/json2/&action=gapps_update&gapps_platform="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    iget-object v4, p0, Lcom/s0up/goomanager/RomUpdateBootReciever$1;->val$mGooAddonPlatform:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&gapps_addon_version="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/s0up/goomanager/RomUpdateBootReciever$1;->val$mGooAddonVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 141
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://goo.im/json2/&action=gapps_update&gapps_platform="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    iget-object v3, p0, Lcom/s0up/goomanager/RomUpdateBootReciever$1;->val$mGooAddonPlatform:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&gapps_addon_version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/s0up/goomanager/RomUpdateBootReciever$1;->val$mGooAddonVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 144
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/s0up/goomanager/WebRequest;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, jsonResult:Ljava/lang/String;
    return-object v1
.end method
