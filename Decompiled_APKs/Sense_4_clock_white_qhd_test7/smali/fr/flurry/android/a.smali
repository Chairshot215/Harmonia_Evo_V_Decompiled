.class final Lfr/flurry/android/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Lfr/flurry/android/FlurryAgent;


# direct methods
.method constructor <init>(Lfr/flurry/android/FlurryAgent;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 461
    iput-object p1, p0, Lfr/flurry/android/a;->b:Lfr/flurry/android/FlurryAgent;

    iput-object p2, p0, Lfr/flurry/android/a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 463
    iget-object v0, p0, Lfr/flurry/android/a;->b:Lfr/flurry/android/FlurryAgent;

    iget-object v1, p0, Lfr/flurry/android/a;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lfr/flurry/android/FlurryAgent;->a(Landroid/content/Context;)V

    .line 464
    return-void
.end method
