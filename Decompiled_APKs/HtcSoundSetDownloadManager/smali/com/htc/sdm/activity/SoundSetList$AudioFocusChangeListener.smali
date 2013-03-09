.class Lcom/htc/sdm/activity/SoundSetList$AudioFocusChangeListener;
.super Ljava/lang/Object;
.source "SoundSetList.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sdm/activity/SoundSetList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioFocusChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sdm/activity/SoundSetList;


# direct methods
.method private constructor <init>(Lcom/htc/sdm/activity/SoundSetList;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/htc/sdm/activity/SoundSetList$AudioFocusChangeListener;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/sdm/activity/SoundSetList;Lcom/htc/sdm/activity/SoundSetList$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/htc/sdm/activity/SoundSetList$AudioFocusChangeListener;-><init>(Lcom/htc/sdm/activity/SoundSetList;)V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3
    .parameter "focusChange"

    .prologue
    .line 165
    iget-object v1, p0, Lcom/htc/sdm/activity/SoundSetList$AudioFocusChangeListener;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Lcom/htc/sdm/activity/SoundSetList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 167
    .local v0, tm:Landroid/telephony/TelephonyManager;
    if-nez v0, :cond_1

    .line 208
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 176
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 185
    :pswitch_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 191
    iget-object v1, p0, Lcom/htc/sdm/activity/SoundSetList$AudioFocusChangeListener;->this$0:Lcom/htc/sdm/activity/SoundSetList;

    invoke-virtual {v1}, Lcom/htc/sdm/activity/SoundSetList;->stopMediaPlayer()V

    goto :goto_0

    .line 176
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
