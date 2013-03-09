.class Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider$MyContentObserver;
.super Landroid/database/ContentObserver;
.source "XT9ForProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;


# direct methods
.method public constructor <init>(Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider$MyContentObserver;->this$0:Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;

    .line 120
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 121
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "self"

    .prologue
    .line 125
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/htc/android/htcime/XT9IME/util/XT9ForProvider;->access$102(Z)Z

    .line 126
    return-void
.end method
