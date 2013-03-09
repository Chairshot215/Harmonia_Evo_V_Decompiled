.class Lcom/google/android/googlequicksearchbox/PackageIconLoader$IconLaterTask$1;
.super Ljava/lang/Object;
.source "PackageIconLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/PackageIconLoader$IconLaterTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/googlequicksearchbox/PackageIconLoader$IconLaterTask;

.field final synthetic val$icon:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/PackageIconLoader$IconLaterTask;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/PackageIconLoader$IconLaterTask$1;->this$1:Lcom/google/android/googlequicksearchbox/PackageIconLoader$IconLaterTask;

    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/PackageIconLoader$IconLaterTask$1;->val$icon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/PackageIconLoader$IconLaterTask$1;->this$1:Lcom/google/android/googlequicksearchbox/PackageIconLoader$IconLaterTask;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/PackageIconLoader$IconLaterTask$1;->val$icon:Landroid/graphics/drawable/Drawable;

    #calls: Lcom/google/android/googlequicksearchbox/PackageIconLoader$IconLaterTask;->store(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/google/android/googlequicksearchbox/PackageIconLoader$IconLaterTask;->access$200(Lcom/google/android/googlequicksearchbox/PackageIconLoader$IconLaterTask;Ljava/lang/Object;)V

    .line 258
    return-void
.end method
