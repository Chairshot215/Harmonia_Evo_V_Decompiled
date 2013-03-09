.class Lcom/google/android/marvin/talkback/CustomResourceMapper$1;
.super Ljava/lang/Object;
.source "CustomResourceMapper.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/marvin/talkback/CustomResourceMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/marvin/talkback/CustomResourceMapper;


# direct methods
.method constructor <init>(Lcom/google/android/marvin/talkback/CustomResourceMapper;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/marvin/talkback/CustomResourceMapper$1;->this$0:Lcom/google/android/marvin/talkback/CustomResourceMapper;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/marvin/talkback/CustomResourceMapper$1;->this$0:Lcom/google/android/marvin/talkback/CustomResourceMapper;

    #getter for: Lcom/google/android/marvin/talkback/CustomResourceMapper;->mCustomResourceMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/android/marvin/talkback/CustomResourceMapper;->access$0(Lcom/google/android/marvin/talkback/CustomResourceMapper;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    return-void
.end method
