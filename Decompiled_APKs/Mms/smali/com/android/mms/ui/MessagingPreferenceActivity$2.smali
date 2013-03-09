.class Lcom/android/mms/ui/MessagingPreferenceActivity$2;
.super Ljava/lang/Object;
.source "MessagingPreferenceActivity.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;


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
    .line 1417
    iput-object p1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$2;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 1419
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$2;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    #calls: Lcom/android/mms/ui/MessagingPreferenceActivity;->sendCmasCommands()V
    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->access$100(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    .line 1420
    const/4 v0, 0x1

    return v0
.end method
