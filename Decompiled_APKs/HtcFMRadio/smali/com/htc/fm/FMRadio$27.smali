.class Lcom/htc/fm/FMRadio$27;
.super Ljava/lang/Object;
.source "FMRadio.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fm/FMRadio;->delayshowNoHeadsetDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fm/FMRadio;


# direct methods
.method constructor <init>(Lcom/htc/fm/FMRadio;)V
    .locals 0
    .parameter

    .prologue
    .line 3081
    iput-object p1, p0, Lcom/htc/fm/FMRadio$27;->this$0:Lcom/htc/fm/FMRadio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3084
    iget-object v0, p0, Lcom/htc/fm/FMRadio$27;->this$0:Lcom/htc/fm/FMRadio;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fm/FMRadio;->showDialog(I)V

    .line 3085
    return-void
.end method
