.class Lcom/google/android/googlequicksearchbox/SourceShortcutRefresher$ShortcutRefreshTask;
.super Ljava/lang/Object;
.source "SourceShortcutRefresher.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/util/NamedTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/SourceShortcutRefresher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShortcutRefreshTask"
.end annotation


# instance fields
.field private final mExtraData:Ljava/lang/String;

.field private final mListener:Lcom/google/android/googlequicksearchbox/ShortcutRefresher$Listener;

.field private final mShortcutId:Ljava/lang/String;

.field private final mSource:Lcom/google/android/googlequicksearchbox/Source;

.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/SourceShortcutRefresher;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/SourceShortcutRefresher;Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/googlequicksearchbox/ShortcutRefresher$Listener;)V
    .locals 0
    .parameter
    .parameter "source"
    .parameter "shortcutId"
    .parameter "extraData"
    .parameter "listener"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/SourceShortcutRefresher$ShortcutRefreshTask;->this$0:Lcom/google/android/googlequicksearchbox/SourceShortcutRefresher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/SourceShortcutRefresher$ShortcutRefreshTask;->mSource:Lcom/google/android/googlequicksearchbox/Source;

    .line 136
    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/SourceShortcutRefresher$ShortcutRefreshTask;->mShortcutId:Ljava/lang/String;

    .line 137
    iput-object p4, p0, Lcom/google/android/googlequicksearchbox/SourceShortcutRefresher$ShortcutRefreshTask;->mExtraData:Ljava/lang/String;

    .line 138
    iput-object p5, p0, Lcom/google/android/googlequicksearchbox/SourceShortcutRefresher$ShortcutRefreshTask;->mListener:Lcom/google/android/googlequicksearchbox/ShortcutRefresher$Listener;

    .line 139
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SourceShortcutRefresher$ShortcutRefreshTask;->mSource:Lcom/google/android/googlequicksearchbox/Source;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/Source;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 149
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SourceShortcutRefresher$ShortcutRefreshTask;->mSource:Lcom/google/android/googlequicksearchbox/Source;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/SourceShortcutRefresher$ShortcutRefreshTask;->mShortcutId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/SourceShortcutRefresher$ShortcutRefreshTask;->mExtraData:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/google/android/googlequicksearchbox/Source;->refreshShortcut(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v0

    .line 150
    .local v0, refreshed:Lcom/google/android/googlequicksearchbox/Suggestion;
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SourceShortcutRefresher$ShortcutRefreshTask;->this$0:Lcom/google/android/googlequicksearchbox/SourceShortcutRefresher;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/SourceShortcutRefresher$ShortcutRefreshTask;->mSource:Lcom/google/android/googlequicksearchbox/Source;

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/SourceShortcutRefresher$ShortcutRefreshTask;->mShortcutId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/googlequicksearchbox/SourceShortcutRefresher;->markShortcutRefreshed(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SourceShortcutRefresher$ShortcutRefreshTask;->mListener:Lcom/google/android/googlequicksearchbox/ShortcutRefresher$Listener;

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/SourceShortcutRefresher$ShortcutRefreshTask;->mSource:Lcom/google/android/googlequicksearchbox/Source;

    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/SourceShortcutRefresher$ShortcutRefreshTask;->mShortcutId:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/google/android/googlequicksearchbox/ShortcutRefresher$Listener;->onShortcutRefreshed(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;Lcom/google/android/googlequicksearchbox/Suggestion;)V

    .line 152
    return-void
.end method
