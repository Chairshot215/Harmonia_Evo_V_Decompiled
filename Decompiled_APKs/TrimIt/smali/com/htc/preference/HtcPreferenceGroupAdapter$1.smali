.class Lcom/htc/preference/HtcPreferenceGroupAdapter$1;
.super Ljava/lang/Object;
.source "HtcPreferenceGroupAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/preference/HtcPreferenceGroupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/preference/HtcPreferenceGroupAdapter;


# direct methods
.method constructor <init>(Lcom/htc/preference/HtcPreferenceGroupAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter$1;->this$0:Lcom/htc/preference/HtcPreferenceGroupAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceGroupAdapter$1;->this$0:Lcom/htc/preference/HtcPreferenceGroupAdapter;

    #calls: Lcom/htc/preference/HtcPreferenceGroupAdapter;->syncMyPreferences()V
    invoke-static {v0}, Lcom/htc/preference/HtcPreferenceGroupAdapter;->access$000(Lcom/htc/preference/HtcPreferenceGroupAdapter;)V

    .line 86
    return-void
.end method
