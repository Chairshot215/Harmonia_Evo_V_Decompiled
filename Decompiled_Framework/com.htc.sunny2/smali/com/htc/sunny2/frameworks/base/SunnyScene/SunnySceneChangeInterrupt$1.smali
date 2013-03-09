.class Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$1;
.super Landroid/os/Handler;
.source "SunnySceneChangeInterrupt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$1;->this$0:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt$1;->this$0:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeInterrupt;->onMessage(Landroid/os/Message;)Z

    return-void
.end method
