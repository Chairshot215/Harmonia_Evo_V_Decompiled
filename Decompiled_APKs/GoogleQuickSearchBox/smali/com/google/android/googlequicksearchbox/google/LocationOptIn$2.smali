.class Lcom/google/android/googlequicksearchbox/google/LocationOptIn$2;
.super Landroid/database/ContentObserver;
.source "LocationOptIn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/google/LocationOptIn;-><init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/QueryStrategy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/google/LocationOptIn;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/google/LocationOptIn;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/LocationOptIn$2;->this$0:Lcom/google/android/googlequicksearchbox/google/LocationOptIn;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/LocationOptIn$2;->this$0:Lcom/google/android/googlequicksearchbox/google/LocationOptIn;

    #calls: Lcom/google/android/googlequicksearchbox/google/LocationOptIn;->getShouldSendLocation()V
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/google/LocationOptIn;->access$000(Lcom/google/android/googlequicksearchbox/google/LocationOptIn;)V

    .line 64
    return-void
.end method
