.class Lcom/google/android/googlequicksearchbox/QsbApplicationWrapper$AppReference;
.super Ljava/lang/Object;
.source "QsbApplicationWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/QsbApplicationWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppReference"
.end annotation


# instance fields
.field private final mRef:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<",
            "Lcom/google/android/googlequicksearchbox/QsbApplication;",
            ">;"
        }
    .end annotation
.end field

.field private mStrongRef:Lcom/google/android/googlequicksearchbox/QsbApplication;

.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/QsbApplicationWrapper;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/QsbApplicationWrapper;Lcom/google/android/googlequicksearchbox/QsbApplication;)V
    .locals 1
    .parameter
    .parameter "app"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/QsbApplicationWrapper$AppReference;->this$0:Lcom/google/android/googlequicksearchbox/QsbApplicationWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplicationWrapper$AppReference;->mRef:Ljava/lang/ref/Reference;

    .line 97
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/QsbApplicationWrapper$AppReference;->mStrongRef:Lcom/google/android/googlequicksearchbox/QsbApplication;

    .line 98
    return-void
.end method


# virtual methods
.method public get()Lcom/google/android/googlequicksearchbox/QsbApplication;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplicationWrapper$AppReference;->mRef:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/googlequicksearchbox/QsbApplication;

    return-object v0
.end method

.method public makeWeak()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/QsbApplicationWrapper$AppReference;->mStrongRef:Lcom/google/android/googlequicksearchbox/QsbApplication;

    .line 106
    return-void
.end method
