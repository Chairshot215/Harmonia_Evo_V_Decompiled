.class Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$1;
.super Landroid/database/DataSetObserver;
.source "LastAccessTimePromoter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;-><init>(Lcom/google/android/googlequicksearchbox/Sources;Lcom/google/android/googlequicksearchbox/SuggestionFilter;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/clicklog/ClickLog;Landroid/database/DataSetObservable;Lcom/google/android/googlequicksearchbox/LastAccessValidator;Lcom/google/android/googlequicksearchbox/Promoter;Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$1;->this$0:Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter$1;->this$0:Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;

    #calls: Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;->updateSourceScores()V
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;->access$000(Lcom/google/android/googlequicksearchbox/LastAccessTimePromoter;)V

    .line 101
    return-void
.end method
