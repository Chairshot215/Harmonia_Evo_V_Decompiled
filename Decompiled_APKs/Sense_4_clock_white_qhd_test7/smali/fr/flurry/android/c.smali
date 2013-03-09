.class final Lfr/flurry/android/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Z

.field private synthetic c:Lfr/flurry/android/FlurryAgent;


# direct methods
.method constructor <init>(Lfr/flurry/android/FlurryAgent;Landroid/content/Context;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 410
    iput-object p1, p0, Lfr/flurry/android/c;->c:Lfr/flurry/android/FlurryAgent;

    iput-object p2, p0, Lfr/flurry/android/c;->a:Landroid/content/Context;

    iput-boolean p3, p0, Lfr/flurry/android/c;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 412
    iget-object v0, p0, Lfr/flurry/android/c;->c:Lfr/flurry/android/FlurryAgent;

    iget-object v1, p0, Lfr/flurry/android/c;->a:Landroid/content/Context;

    iget-boolean v2, p0, Lfr/flurry/android/c;->b:Z

    invoke-virtual {v0, v1, v2}, Lfr/flurry/android/FlurryAgent;->a(Landroid/content/Context;Z)V

    .line 413
    return-void
.end method
