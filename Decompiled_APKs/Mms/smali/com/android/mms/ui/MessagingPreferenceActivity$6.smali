.class Lcom/android/mms/ui/MessagingPreferenceActivity$6;
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

.field final synthetic val$prefSms:Lcom/htc/preference/HtcPreference;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessagingPreferenceActivity;Lcom/htc/preference/HtcPreference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1636
    iput-object p1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$6;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    iput-object p2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$6;->val$prefSms:Lcom/htc/preference/HtcPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "p"
    .parameter "newObjValue"

    .prologue
    .line 1638
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 1639
    .local v0, sSmsPriority:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 1640
    :cond_0
    const/4 v2, 0x0

    .line 1649
    :goto_0
    return v2

    .line 1642
    :cond_1
    const/4 v1, 0x0

    .line 1643
    .local v1, sSummary:Ljava/lang/String;
    const-string v2, "normal"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1644
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$6;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900c3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1647
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$6;->val$prefSms:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1649
    const/4 v2, 0x1

    goto :goto_0

    .line 1645
    :cond_3
    const-string v2, "high"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1646
    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$6;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900c2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method
