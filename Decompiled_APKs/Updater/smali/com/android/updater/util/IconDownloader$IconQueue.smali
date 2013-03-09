.class Lcom/android/updater/util/IconDownloader$IconQueue;
.super Ljava/lang/Object;
.source "IconDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/updater/util/IconDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IconQueue"
.end annotation


# instance fields
.field private mQueueElementStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/android/updater/util/IconDownloader$QueueElement;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/updater/util/IconDownloader;


# direct methods
.method constructor <init>(Lcom/android/updater/util/IconDownloader;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/updater/util/IconDownloader$IconQueue;->this$0:Lcom/android/updater/util/IconDownloader;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/updater/util/IconDownloader$IconQueue;->mQueueElementStack:Ljava/util/Stack;

    return-void
.end method

.method static synthetic access$000(Lcom/android/updater/util/IconDownloader$IconQueue;)Ljava/util/Stack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/updater/util/IconDownloader$IconQueue;->mQueueElementStack:Ljava/util/Stack;

    return-object v0
.end method


# virtual methods
.method public removeRedundant(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "apkIcon"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/updater/util/IconDownloader$IconQueue;->mQueueElementStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method
