.class public Lcom/htc/android/fieldtrial/PingItemValueTask;
.super Ljava/util/TimerTask;
.source "PingItemValueTask.java"


# instance fields
.field private mActivity:Lcom/htc/android/fieldtrial/ListItemsActivity;


# direct methods
.method public constructor <init>(Lcom/htc/android/fieldtrial/ListItemsActivity;)V
    .locals 0
    .parameter "actiity"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/htc/android/fieldtrial/PingItemValueTask;->mActivity:Lcom/htc/android/fieldtrial/ListItemsActivity;

    .line 13
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/htc/android/fieldtrial/PingItemValueTask;->mActivity:Lcom/htc/android/fieldtrial/ListItemsActivity;

    invoke-virtual {v0}, Lcom/htc/android/fieldtrial/ListItemsActivity;->updateItems()V

    .line 20
    return-void
.end method
