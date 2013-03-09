.class final Lfr/flurry/android/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lfr/flurry/android/FlurryAgent;


# direct methods
.method constructor <init>(Lfr/flurry/android/FlurryAgent;)V
    .locals 0
    .parameter

    .prologue
    .line 1099
    iput-object p1, p0, Lfr/flurry/android/b;->a:Lfr/flurry/android/FlurryAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 1101
    iget-object v0, p0, Lfr/flurry/android/b;->a:Lfr/flurry/android/FlurryAgent;

    invoke-virtual {v0}, Lfr/flurry/android/FlurryAgent;->a()V

    .line 1102
    return-void
.end method
