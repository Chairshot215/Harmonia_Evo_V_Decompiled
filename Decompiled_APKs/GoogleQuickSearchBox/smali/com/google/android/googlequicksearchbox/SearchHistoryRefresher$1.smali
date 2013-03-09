.class Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher$1;
.super Ljava/lang/Object;
.source "SearchHistoryRefresher.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/util/NamedTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;->refreshSearchHistoryAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher$1;->this$0:Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    const-string v0, "RefreshSearchHistory"

    return-object v0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher$1;->this$0:Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;

    #calls: Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;->refreshSearchHistory()V
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;->access$000(Lcom/google/android/googlequicksearchbox/SearchHistoryRefresher;)V

    .line 96
    return-void
.end method
