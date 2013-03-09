.class Lcom/htc/preference/HtcPreferenceFragment$1;
.super Landroid/os/Handler;
.source "HtcPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/preference/HtcPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/preference/HtcPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/htc/preference/HtcPreferenceFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/htc/preference/HtcPreferenceFragment$1;->this$0:Lcom/htc/preference/HtcPreferenceFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 120
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 126
    :goto_0
    return-void

    .line 123
    :pswitch_0
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceFragment$1;->this$0:Lcom/htc/preference/HtcPreferenceFragment;

    #calls: Lcom/htc/preference/HtcPreferenceFragment;->bindPreferences()V
    invoke-static {v0}, Lcom/htc/preference/HtcPreferenceFragment;->access$000(Lcom/htc/preference/HtcPreferenceFragment;)V

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
