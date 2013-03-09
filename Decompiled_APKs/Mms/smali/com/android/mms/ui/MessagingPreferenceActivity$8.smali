.class Lcom/android/mms/ui/MessagingPreferenceActivity$8;
.super Ljava/lang/Object;
.source "MessagingPreferenceActivity.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessagingPreferenceActivity;->initPreference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

.field final synthetic val$Str:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessagingPreferenceActivity;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1734
    iput-object p1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$8;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    iput-object p2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$8;->val$Str:[Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 13
    .parameter "p"
    .parameter "newObjValue"

    .prologue
    const/4 v8, 0x0

    .line 1736
    move-object v7, p2

    check-cast v7, Ljava/lang/String;

    .line 1737
    .local v7, newValue:Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_1

    .line 1765
    :cond_0
    :goto_0
    return v8

    .line 1741
    :cond_1
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1742
    .local v4, mIndex:I
    invoke-static {}, Lcom/android/mms/MmsApp;->getKiloSize()I

    move-result v2

    .line 1743
    .local v2, ksize:I
    iget-object v9, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$8;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    #getter for: Lcom/android/mms/ui/MessagingPreferenceActivity;->preSize:Lcom/htc/preference/HtcPreference;
    invoke-static {v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$500(Lcom/android/mms/ui/MessagingPreferenceActivity;)Lcom/htc/preference/HtcPreference;

    move-result-object v9

    iget-object v10, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$8;->val$Str:[Ljava/lang/String;

    add-int/lit8 v11, v4, -0x1

    aget-object v10, v10, v11

    new-array v11, v8, [Ljava/lang/Object;

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1746
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v9

    float-to-double v9, v9

    const-wide/high16 v11, 0x4000

    cmpl-double v9, v9, v11

    if-ltz v9, :cond_3

    .line 1748
    mul-int/lit8 v0, v2, 0x5

    .line 1749
    .local v0, MESSAGE_SIZE_MARGIN:I
    iget-object v9, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$8;->val$Str:[Ljava/lang/String;

    add-int/lit8 v10, v4, -0x1

    aget-object v9, v9, v10

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1750
    .local v3, limit:Ljava/lang/String;
    const-wide/16 v5, 0x0

    .line 1751
    .local v5, msgSizeLimit:D
    const-string v8, "K"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1752
    const-string v8, "K"

    const-string v9, ""

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    int-to-double v10, v2

    mul-double/2addr v8, v10

    int-to-double v10, v0

    sub-double v5, v8, v10

    .line 1755
    :cond_2
    :goto_1
    iget-object v8, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$8;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-virtual {v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "pref_key_mms_max_size"

    double-to-int v10, v5

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1758
    new-instance v1, Landroid/content/Intent;

    const-string v8, "com.htc.android.broadcast.MMS_SETTING"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1759
    .local v1, i:Landroid/content/Intent;
    const-string v8, "pref_key_mms_max_size"

    double-to-int v9, v5

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1760
    iget-object v8, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$8;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-virtual {v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1765
    .end local v0           #MESSAGE_SIZE_MARGIN:I
    .end local v1           #i:Landroid/content/Intent;
    .end local v3           #limit:Ljava/lang/String;
    .end local v5           #msgSizeLimit:D
    :cond_3
    const/4 v8, 0x1

    goto :goto_0

    .line 1753
    .restart local v0       #MESSAGE_SIZE_MARGIN:I
    .restart local v3       #limit:Ljava/lang/String;
    .restart local v5       #msgSizeLimit:D
    :cond_4
    const-string v8, "M"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1754
    const-string v8, "M"

    const-string v9, ""

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    int-to-double v10, v2

    mul-double/2addr v8, v10

    int-to-double v10, v2

    mul-double/2addr v8, v10

    int-to-double v10, v0

    sub-double v5, v8, v10

    goto :goto_1
.end method
