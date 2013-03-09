.class Lcom/google/android/googlequicksearchbox/NewSourceWatcher$1;
.super Ljava/lang/Object;
.source "NewSourceWatcher.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/util/NamedTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/NewSourceWatcher;-><init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/Sources;Lcom/google/android/googlequicksearchbox/SearchSettings;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/util/NamedTaskExecutor;Lcom/google/android/googlequicksearchbox/QsbNotificationsSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/NewSourceWatcher;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/NewSourceWatcher;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/NewSourceWatcher$1;->this$0:Lcom/google/android/googlequicksearchbox/NewSourceWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/NewSourceWatcher$1;->this$0:Lcom/google/android/googlequicksearchbox/NewSourceWatcher;

    #calls: Lcom/google/android/googlequicksearchbox/NewSourceWatcher;->writeKnownSourceNamesSetting()V
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/NewSourceWatcher;->access$000(Lcom/google/android/googlequicksearchbox/NewSourceWatcher;)V

    .line 82
    return-void
.end method
