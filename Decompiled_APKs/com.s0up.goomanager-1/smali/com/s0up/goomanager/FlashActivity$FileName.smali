.class public Lcom/s0up/goomanager/FlashActivity$FileName;
.super Ljava/lang/Object;
.source "FlashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s0up/goomanager/FlashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileName"
.end annotation


# instance fields
.field public checked:Z

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    const-string v0, ""

    iput-object v0, p0, Lcom/s0up/goomanager/FlashActivity$FileName;->name:Ljava/lang/String;

    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/s0up/goomanager/FlashActivity$FileName;->checked:Z

    .line 247
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    const-string v0, ""

    iput-object v0, p0, Lcom/s0up/goomanager/FlashActivity$FileName;->name:Ljava/lang/String;

    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/s0up/goomanager/FlashActivity$FileName;->checked:Z

    .line 249
    iput-object p1, p0, Lcom/s0up/goomanager/FlashActivity$FileName;->name:Ljava/lang/String;

    .line 250
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .parameter "name"
    .parameter "checked"

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    const-string v0, ""

    iput-object v0, p0, Lcom/s0up/goomanager/FlashActivity$FileName;->name:Ljava/lang/String;

    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/s0up/goomanager/FlashActivity$FileName;->checked:Z

    .line 252
    iput-object p1, p0, Lcom/s0up/goomanager/FlashActivity$FileName;->name:Ljava/lang/String;

    .line 253
    iput-boolean p2, p0, Lcom/s0up/goomanager/FlashActivity$FileName;->checked:Z

    .line 254
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/s0up/goomanager/FlashActivity$FileName;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/s0up/goomanager/FlashActivity$FileName;->checked:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0
    .parameter "checked"

    .prologue
    .line 265
    iput-boolean p1, p0, Lcom/s0up/goomanager/FlashActivity$FileName;->checked:Z

    .line 266
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 259
    iput-object p1, p0, Lcom/s0up/goomanager/FlashActivity$FileName;->name:Ljava/lang/String;

    .line 260
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/s0up/goomanager/FlashActivity$FileName;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toggleChecked()V
    .locals 1

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/s0up/goomanager/FlashActivity$FileName;->checked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/s0up/goomanager/FlashActivity$FileName;->checked:Z

    .line 272
    return-void

    .line 271
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
