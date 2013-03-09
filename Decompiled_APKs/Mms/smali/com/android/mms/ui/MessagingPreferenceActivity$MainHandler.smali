.class final Lcom/android/mms/ui/MessagingPreferenceActivity$MainHandler;
.super Landroid/os/Handler;
.source "MessagingPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessagingPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 3142
    iput-object p1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$MainHandler;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/MessagingPreferenceActivity;Lcom/android/mms/ui/MessagingPreferenceActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3142
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessagingPreferenceActivity$MainHandler;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 3146
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 3161
    :goto_0
    :pswitch_0
    return-void

    .line 3148
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 3149
    .local v0, smsc:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 3150
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$MainHandler;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    #getter for: Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscPref:Lcom/android/mms/ui/SmsCenterPreference;
    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$1000(Lcom/android/mms/ui/MessagingPreferenceActivity;)Lcom/android/mms/ui/SmsCenterPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/SmsCenterPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 3151
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$MainHandler;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    #getter for: Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscPref:Lcom/android/mms/ui/SmsCenterPreference;
    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$1000(Lcom/android/mms/ui/MessagingPreferenceActivity;)Lcom/android/mms/ui/SmsCenterPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/SmsCenterPreference;->setText(Ljava/lang/String;)V

    .line 3152
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$MainHandler;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    #setter for: Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsc:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$1102(Lcom/android/mms/ui/MessagingPreferenceActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 3154
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$MainHandler;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    #getter for: Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscPref:Lcom/android/mms/ui/SmsCenterPreference;
    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$1000(Lcom/android/mms/ui/MessagingPreferenceActivity;)Lcom/android/mms/ui/SmsCenterPreference;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/SmsCenterPreference;->setEnabled(Z)V

    goto :goto_0

    .line 3158
    .end local v0           #smsc:Ljava/lang/String;
    :pswitch_2
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$MainHandler;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    #getter for: Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmscPref:Lcom/android/mms/ui/SmsCenterPreference;
    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$1000(Lcom/android/mms/ui/MessagingPreferenceActivity;)Lcom/android/mms/ui/SmsCenterPreference;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/SmsCenterPreference;->setEnabled(Z)V

    goto :goto_0

    .line 3146
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
