.class Lcom/google/android/finsky/activities/DetailsTextViewBinder$SelfishUrlSpan;
.super Landroid/text/style/URLSpan;
.source "DetailsTextViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/DetailsTextViewBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelfishUrlSpan"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/DetailsTextViewBinder;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/activities/DetailsTextViewBinder;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "url"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder$SelfishUrlSpan;->this$0:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    .line 145
    invoke-direct {p0, p2}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 146
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "widget"

    .prologue
    .line 150
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder$SelfishUrlSpan;->this$0:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    const/4 v3, 0x1

    #setter for: Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mUrlSpanClicked:Z
    invoke-static {v2, v3}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->access$402(Lcom/google/android/finsky/activities/DetailsTextViewBinder;Z)Z

    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 153
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 154
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder$SelfishUrlSpan;->getURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 157
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 161
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsTextViewBinder$SelfishUrlSpan;->this$0:Lcom/google/android/finsky/activities/DetailsTextViewBinder;

    #getter for: Lcom/google/android/finsky/activities/DetailsTextViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;
    invoke-static {v2}, Lcom/google/android/finsky/activities/DetailsTextViewBinder;->access$500(Lcom/google/android/finsky/activities/DetailsTextViewBinder;)Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/DetailsTextViewBinder$SelfishUrlSpan;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->handleDeepLink(Ljava/lang/String;)V

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
