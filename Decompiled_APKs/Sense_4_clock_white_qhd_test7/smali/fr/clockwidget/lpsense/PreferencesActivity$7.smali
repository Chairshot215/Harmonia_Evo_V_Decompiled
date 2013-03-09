.class Lfr/clockwidget/lpsense/PreferencesActivity$7;
.super Ljava/lang/Object;
.source "PreferencesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/clockwidget/lpsense/PreferencesActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfr/clockwidget/lpsense/PreferencesActivity;


# direct methods
.method constructor <init>(Lfr/clockwidget/lpsense/PreferencesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lfr/clockwidget/lpsense/PreferencesActivity$7;->this$0:Lfr/clockwidget/lpsense/PreferencesActivity;

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 364
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 365
    .local v1, intent:Landroid/content/Intent;
    sget-object v2, Lfr/clockwidget/lpsense/PreferencesActivity;->DONATE_PAYPAL_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 367
    :try_start_0
    iget-object v2, p0, Lfr/clockwidget/lpsense/PreferencesActivity$7;->this$0:Lfr/clockwidget/lpsense/PreferencesActivity;

    invoke-virtual {v2, v1}, Lfr/clockwidget/lpsense/PreferencesActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    :goto_0
    return-void

    .line 368
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 369
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    iget-object v2, p0, Lfr/clockwidget/lpsense/PreferencesActivity$7;->this$0:Lfr/clockwidget/lpsense/PreferencesActivity;

    const v3, 0x7f08004c

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
