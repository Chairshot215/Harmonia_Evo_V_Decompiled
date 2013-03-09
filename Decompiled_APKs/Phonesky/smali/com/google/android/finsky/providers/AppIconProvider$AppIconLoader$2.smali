.class Lcom/google/android/finsky/providers/AppIconProvider$AppIconLoader$2;
.super Ljava/lang/Object;
.source "AppIconProvider.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/providers/AppIconProvider$AppIconLoader;->loadToFileFromUrl(Ljava/lang/String;Lcom/google/android/finsky/providers/AppIconProvider$TimedOnCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/providers/AppIconProvider$AppIconLoader;

.field final synthetic val$listener:Lcom/google/android/finsky/providers/AppIconProvider$TimedOnCompleteListener;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/providers/AppIconProvider$AppIconLoader;Lcom/google/android/finsky/providers/AppIconProvider$TimedOnCompleteListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/google/android/finsky/providers/AppIconProvider$AppIconLoader$2;->this$0:Lcom/google/android/finsky/providers/AppIconProvider$AppIconLoader;

    iput-object p2, p0, Lcom/google/android/finsky/providers/AppIconProvider$AppIconLoader$2;->val$listener:Lcom/google/android/finsky/providers/AppIconProvider$TimedOnCompleteListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .parameter "volleyError"

    .prologue
    .line 237
    const-string v0, "Failed to fetch icon to file."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    iget-object v0, p0, Lcom/google/android/finsky/providers/AppIconProvider$AppIconLoader$2;->val$listener:Lcom/google/android/finsky/providers/AppIconProvider$TimedOnCompleteListener;

    invoke-virtual {v0}, Lcom/google/android/finsky/providers/AppIconProvider$TimedOnCompleteListener;->callOnComplete()V

    .line 239
    return-void
.end method
