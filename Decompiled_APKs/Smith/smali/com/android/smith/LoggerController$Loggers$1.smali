.class Lcom/android/smith/LoggerController$Loggers$1;
.super Ljava/lang/Object;
.source "LoggerController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/smith/LoggerController$Loggers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/smith/LoggerController$Loggers;


# direct methods
.method constructor <init>(Lcom/android/smith/LoggerController$Loggers;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/smith/LoggerController$Loggers$1;->this$1:Lcom/android/smith/LoggerController$Loggers;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 126
    iget-object v3, p0, Lcom/android/smith/LoggerController$Loggers$1;->this$1:Lcom/android/smith/LoggerController$Loggers;

    iget-object v3, v3, Lcom/android/smith/LoggerController$Loggers;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    if-nez v3, :cond_0

    .line 141
    :goto_0
    return-void

    .line 129
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 130
    .local v2, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/smith/LoggerController$Loggers$1;->this$1:Lcom/android/smith/LoggerController$Loggers;

    iget-object v3, v3, Lcom/android/smith/LoggerController$Loggers;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/smith/LoggerController$Loggers$1;->this$1:Lcom/android/smith/LoggerController$Loggers;

    iget-object v3, v3, Lcom/android/smith/LoggerController$Loggers;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 131
    .local v0, ci:Landroid/content/pm/ComponentInfo;
    :goto_1
    iget-object v3, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    :try_start_0
    iget-object v3, p0, Lcom/android/smith/LoggerController$Loggers$1;->this$1:Lcom/android/smith/LoggerController$Loggers;

    iget-object v3, v3, Lcom/android/smith/LoggerController$Loggers;->this$0:Lcom/android/smith/LoggerController;

    invoke-virtual {v3, v2}, Lcom/android/smith/LoggerController;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 137
    :catch_0
    move-exception v1

    .line 139
    .local v1, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/android/smith/LoggerController$Loggers$1;->this$1:Lcom/android/smith/LoggerController$Loggers;

    iget-object v3, v3, Lcom/android/smith/LoggerController$Loggers;->this$0:Lcom/android/smith/LoggerController;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to launch!\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 130
    .end local v0           #ci:Landroid/content/pm/ComponentInfo;
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v3, p0, Lcom/android/smith/LoggerController$Loggers$1;->this$1:Lcom/android/smith/LoggerController$Loggers;

    iget-object v3, v3, Lcom/android/smith/LoggerController$Loggers;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_1
.end method
