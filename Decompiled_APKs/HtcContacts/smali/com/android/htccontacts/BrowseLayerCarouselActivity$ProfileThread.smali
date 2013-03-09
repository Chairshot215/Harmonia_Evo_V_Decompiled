.class final Lcom/android/htccontacts/BrowseLayerCarouselActivity$ProfileThread;
.super Ljava/lang/Thread;
.source "BrowseLayerCarouselActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/BrowseLayerCarouselActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProfileThread"
.end annotation


# instance fields
.field profileContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 611
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 612
    iput-object p1, p0, Lcom/android/htccontacts/BrowseLayerCarouselActivity$ProfileThread;->profileContext:Landroid/content/Context;

    .line 613
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 616
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 617
    iget-object v2, p0, Lcom/android/htccontacts/BrowseLayerCarouselActivity$ProfileThread;->profileContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 618
    .local v1, sp:Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/android/htccontacts/BrowseLayerCarouselActivity$ProfileThread;->profileContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/htccontacts/util/ContactsUtils;->initialProfilingSchedule(Landroid/content/Context;)V

    .line 619
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 620
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "PROFILING_INITIALIZED_DONE"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 621
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 622
    return-void
.end method
