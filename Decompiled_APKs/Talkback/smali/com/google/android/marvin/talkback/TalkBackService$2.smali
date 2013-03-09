.class Lcom/google/android/marvin/talkback/TalkBackService$2;
.super Ljava/lang/Object;
.source "TalkBackService.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/marvin/talkback/TalkBackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/marvin/talkback/TalkBackService;


# direct methods
.method constructor <init>(Lcom/google/android/marvin/talkback/TalkBackService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/marvin/talkback/TalkBackService$2;->this$0:Lcom/google/android/marvin/talkback/TalkBackService;

    .line 861
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .parameter "prefs"
    .parameter "key"

    .prologue
    .line 864
    iget-object v0, p0, Lcom/google/android/marvin/talkback/TalkBackService$2;->this$0:Lcom/google/android/marvin/talkback/TalkBackService;

    #calls: Lcom/google/android/marvin/talkback/TalkBackService;->reloadPreferences(Landroid/content/SharedPreferences;)V
    invoke-static {v0, p1}, Lcom/google/android/marvin/talkback/TalkBackService;->access$2(Lcom/google/android/marvin/talkback/TalkBackService;Landroid/content/SharedPreferences;)V

    .line 865
    return-void
.end method
