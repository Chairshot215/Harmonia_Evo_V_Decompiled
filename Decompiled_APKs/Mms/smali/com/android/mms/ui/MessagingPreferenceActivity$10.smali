.class Lcom/android/mms/ui/MessagingPreferenceActivity$10;
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


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1927
    iput-object p1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$10;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "p"
    .parameter "newObjValue"

    .prologue
    .line 1929
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 1930
    .local v0, newValue:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1931
    :cond_0
    const/4 v1, 0x0

    .line 1943
    :goto_0
    return v1

    .line 1933
    :cond_1
    const-string v1, "7bit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1935
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$10;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    const-string v2, "7bit"

    #calls: Lcom/android/mms/ui/MessagingPreferenceActivity;->setGreekInputType(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$600(Lcom/android/mms/ui/MessagingPreferenceActivity;Ljava/lang/String;)V

    .line 1943
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 1938
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$10;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    const-string v2, "unicode"

    #calls: Lcom/android/mms/ui/MessagingPreferenceActivity;->setGreekInputType(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$600(Lcom/android/mms/ui/MessagingPreferenceActivity;Ljava/lang/String;)V

    goto :goto_1
.end method
