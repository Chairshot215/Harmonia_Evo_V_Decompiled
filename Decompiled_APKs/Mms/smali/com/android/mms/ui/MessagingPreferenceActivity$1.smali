.class Lcom/android/mms/ui/MessagingPreferenceActivity$1;
.super Ljava/lang/Object;
.source "MessagingPreferenceActivity.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessagingPreferenceActivity;->setOnCheckBoxChangeListener(Lcom/htc/preference/HtcCheckBoxPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1394
    iput-object p1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$1;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 10
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v7, 0x1

    .line 1396
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 1397
    .local v3, isChecked:Z
    if-eqz v3, :cond_0

    const/4 v1, 0x3

    .line 1398
    .local v1, enabled:I
    :goto_0
    invoke-virtual {p1}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getCmasChannelIdFromPreferenceKey(Ljava/lang/String;)I

    move-result v0

    .line 1399
    .local v0, chId:I
    iget-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$1;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    #calls: Lcom/android/mms/ui/MessagingPreferenceActivity;->getCSTableIndexFromServiceID(I)I
    invoke-static {v6, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$000(Lcom/android/mms/ui/MessagingPreferenceActivity;I)I

    move-result v2

    .line 1400
    .local v2, index:I
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v5

    .line 1401
    .local v5, smsManager:Landroid/telephony/SmsManager;
    invoke-virtual {v5, v1, v0}, Landroid/telephony/SmsManager;->setBCSMS(II)I

    move-result v4

    .line 1402
    .local v4, result:I
    const-string v6, "MessagingPreferenceActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setBCSMS> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    if-ne v4, v7, :cond_3

    .line 1404
    if-ltz v2, :cond_2

    .line 1405
    sget-object v6, Lcom/android/mms/MmsApp;->mCmasServiceTable:Lcom/android/mms/MmsApp$CmasSeriveTable;

    iget-object v8, v6, Lcom/android/mms/MmsApp$CmasSeriveTable;->select:[I

    if-eqz v3, :cond_1

    move v6, v7

    :goto_1
    aput v6, v8, v2

    .line 1411
    :goto_2
    return v7

    .line 1397
    .end local v0           #chId:I
    .end local v1           #enabled:I
    .end local v2           #index:I
    .end local v4           #result:I
    .end local v5           #smsManager:Landroid/telephony/SmsManager;
    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    .line 1405
    .restart local v0       #chId:I
    .restart local v1       #enabled:I
    .restart local v2       #index:I
    .restart local v4       #result:I
    .restart local v5       #smsManager:Landroid/telephony/SmsManager;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 1407
    :cond_2
    const-string v6, "MessagingPreferenceActivity"

    const-string v8, "Cmas Setting UI not sync"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1409
    :cond_3
    const-string v6, "MessagingPreferenceActivity"

    const-string v8, "set BCSMS fail"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
