.class Lcom/android/mms/ui/MessagingPreferenceActivity$17;
.super Ljava/lang/Object;
.source "MessagingPreferenceActivity.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessagingPreferenceActivity;->initMsgPreviewPreference()V
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
    .line 2215
    iput-object p1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$17;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    iput-object p2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$17;->val$Str:[Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "p"
    .parameter "newObjValue"

    .prologue
    const/4 v2, 0x0

    .line 2217
    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    .line 2218
    .local v1, newValue:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 2228
    :cond_0
    :goto_0
    return v2

    .line 2222
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2224
    .local v0, mIndex:I
    iget-object v3, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$17;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    #getter for: Lcom/android/mms/ui/MessagingPreferenceActivity;->preMsgPreview:Lcom/htc/preference/HtcPreference;
    invoke-static {v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$700(Lcom/android/mms/ui/MessagingPreferenceActivity;)Lcom/htc/preference/HtcPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$17;->val$Str:[Ljava/lang/String;

    aget-object v4, v4, v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2226
    add-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lcom/android/mms/ui/ConversationListAdapter;->mMessagePreviewLine:I

    .line 2228
    const/4 v2, 0x1

    goto :goto_0
.end method
