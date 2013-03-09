.class Lcom/android/mms/ui/MessagingPreferenceActivity$19;
.super Ljava/lang/Object;
.source "MessagingPreferenceActivity.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessagingPreferenceActivity;->initSmsPriority()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

.field final synthetic val$STR_HIGH:Ljava/lang/String;

.field final synthetic val$STR_NORMAL:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessagingPreferenceActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2373
    iput-object p1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$19;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    iput-object p2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$19;->val$STR_NORMAL:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$19;->val$STR_HIGH:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "p"
    .parameter "newObjValue"

    .prologue
    .line 2375
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 2376
    .local v0, newValue:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 2383
    :goto_0
    return v1

    .line 2378
    :cond_1
    const-string v1, "normal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2379
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$19;->val$STR_NORMAL:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2383
    :cond_2
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 2380
    :cond_3
    const-string v1, "high"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2381
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$19;->val$STR_HIGH:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
