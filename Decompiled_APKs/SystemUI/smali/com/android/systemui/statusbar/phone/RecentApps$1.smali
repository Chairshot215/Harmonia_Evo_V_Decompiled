.class Lcom/android/systemui/statusbar/phone/RecentApps$1;
.super Landroid/os/Handler;
.source "RecentApps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/RecentApps;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/RecentApps;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/RecentApps;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/RecentApps$1;->this$0:Lcom/android/systemui/statusbar/phone/RecentApps;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RecentApps$1;->this$0:Lcom/android/systemui/statusbar/phone/RecentApps;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/RecentApps;->loadButtons(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
