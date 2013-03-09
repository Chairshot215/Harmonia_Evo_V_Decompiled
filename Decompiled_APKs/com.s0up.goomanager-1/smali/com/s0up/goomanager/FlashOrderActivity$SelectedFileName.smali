.class public Lcom/s0up/goomanager/FlashOrderActivity$SelectedFileName;
.super Ljava/lang/Object;
.source "FlashOrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/s0up/goomanager/FlashOrderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelectedFileName"
.end annotation


# instance fields
.field public checked:Z

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    const-string v0, ""

    iput-object v0, p0, Lcom/s0up/goomanager/FlashOrderActivity$SelectedFileName;->name:Ljava/lang/String;

    .line 209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/s0up/goomanager/FlashOrderActivity$SelectedFileName;->checked:Z

    .line 210
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    const-string v0, ""

    iput-object v0, p0, Lcom/s0up/goomanager/FlashOrderActivity$SelectedFileName;->name:Ljava/lang/String;

    .line 209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/s0up/goomanager/FlashOrderActivity$SelectedFileName;->checked:Z

    .line 212
    iput-object p1, p0, Lcom/s0up/goomanager/FlashOrderActivity$SelectedFileName;->name:Ljava/lang/String;

    .line 213
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/s0up/goomanager/FlashOrderActivity$SelectedFileName;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 218
    iput-object p1, p0, Lcom/s0up/goomanager/FlashOrderActivity$SelectedFileName;->name:Ljava/lang/String;

    .line 219
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/s0up/goomanager/FlashOrderActivity$SelectedFileName;->name:Ljava/lang/String;

    return-object v0
.end method
