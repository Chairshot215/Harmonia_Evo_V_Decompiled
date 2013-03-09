.class public Lcom/android/htccontacts/widget/MessagesCustomizeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MessagesCustomizeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/widget/MessagesCustomizeReceiver$MessagesCustomizeTask;
    }
.end annotation


# static fields
.field private static final ACTION_CUSTOMIZATION:Ljava/lang/String; = "android.htc.intent.action.CUSTOMIZATION_CHANGE"

.field public static final CUSTOMER_ITEM_MMS_MRN:Ljava/lang/String; = "MMS_Max_Recipient_Number"

.field public static final CUSTOMER_ITEM_SMS_MRN:Ljava/lang/String; = "SMS_Max_Recipient_Number"

.field public static final CUSTOMIZATION_SHARE_PREFERENCE_NAME:Ljava/lang/String; = "com.android.htccontacts.customizationBySIM"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 25
    new-instance v0, Lcom/android/htccontacts/widget/MessagesCustomizeReceiver$MessagesCustomizeTask;

    invoke-direct {v0, p1}, Lcom/android/htccontacts/widget/MessagesCustomizeReceiver$MessagesCustomizeTask;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Intent;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/MessagesCustomizeReceiver$MessagesCustomizeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 26
    return-void
.end method
