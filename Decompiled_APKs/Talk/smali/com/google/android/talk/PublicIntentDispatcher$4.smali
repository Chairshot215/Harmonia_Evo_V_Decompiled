.class final Lcom/google/android/talk/PublicIntentDispatcher$4;
.super Ljava/lang/Object;
.source "PublicIntentDispatcher.java"

# interfaces
.implements Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/PublicIntentDispatcher;->executeRequestedAction(Landroid/content/Context;ILjava/lang/String;JLjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$c:Landroid/content/Context;

.field final synthetic val$fromAccountId:J

.field final synthetic val$messageBody:Ljava/lang/String;

.field final synthetic val$needLogin:Z

.field final synthetic val$query:Lcom/google/android/talk/ContactInfoQuery;

.field final synthetic val$toAddress:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/talk/ContactInfoQuery;Landroid/content/Context;JLjava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Lcom/google/android/talk/PublicIntentDispatcher$4;->val$query:Lcom/google/android/talk/ContactInfoQuery;

    iput-object p2, p0, Lcom/google/android/talk/PublicIntentDispatcher$4;->val$c:Landroid/content/Context;

    iput-wide p3, p0, Lcom/google/android/talk/PublicIntentDispatcher$4;->val$fromAccountId:J

    iput-object p5, p0, Lcom/google/android/talk/PublicIntentDispatcher$4;->val$toAddress:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/talk/PublicIntentDispatcher$4;->val$needLogin:Z

    iput-object p7, p0, Lcom/google/android/talk/PublicIntentDispatcher$4;->val$messageBody:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactInfoLoaded()V
    .locals 7

    .prologue
    .line 355
    iget-object v0, p0, Lcom/google/android/talk/PublicIntentDispatcher$4;->val$query:Lcom/google/android/talk/ContactInfoQuery;

    invoke-virtual {v0}, Lcom/google/android/talk/ContactInfoQuery;->getCapabilities()I

    move-result v6

    .line 356
    .local v6, capabilities:I
    invoke-static {v6}, Lcom/google/android/talk/ActivityUtils;->isVideoChatCapable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/google/android/talk/PublicIntentDispatcher$4;->val$c:Landroid/content/Context;

    iget-wide v1, p0, Lcom/google/android/talk/PublicIntentDispatcher$4;->val$fromAccountId:J

    iget-object v3, p0, Lcom/google/android/talk/PublicIntentDispatcher$4;->val$toAddress:Ljava/lang/String;

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/google/android/talk/PublicIntentDispatcher$4;->val$needLogin:Z

    #calls: Lcom/google/android/talk/PublicIntentDispatcher;->startCall(Landroid/content/Context;JLjava/lang/String;ZZ)V
    invoke-static/range {v0 .. v5}, Lcom/google/android/talk/PublicIntentDispatcher;->access$700(Landroid/content/Context;JLjava/lang/String;ZZ)V

    .line 363
    :goto_0
    return-void

    .line 358
    :cond_0
    invoke-static {v6}, Lcom/google/android/talk/ActivityUtils;->isAudioChatCapable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/google/android/talk/PublicIntentDispatcher$4;->val$c:Landroid/content/Context;

    iget-wide v1, p0, Lcom/google/android/talk/PublicIntentDispatcher$4;->val$fromAccountId:J

    iget-object v3, p0, Lcom/google/android/talk/PublicIntentDispatcher$4;->val$toAddress:Ljava/lang/String;

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/google/android/talk/PublicIntentDispatcher$4;->val$needLogin:Z

    #calls: Lcom/google/android/talk/PublicIntentDispatcher;->startCall(Landroid/content/Context;JLjava/lang/String;ZZ)V
    invoke-static/range {v0 .. v5}, Lcom/google/android/talk/PublicIntentDispatcher;->access$700(Landroid/content/Context;JLjava/lang/String;ZZ)V

    goto :goto_0

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/PublicIntentDispatcher$4;->val$c:Landroid/content/Context;

    iget-wide v1, p0, Lcom/google/android/talk/PublicIntentDispatcher$4;->val$fromAccountId:J

    iget-object v3, p0, Lcom/google/android/talk/PublicIntentDispatcher$4;->val$toAddress:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/talk/PublicIntentDispatcher$4;->val$messageBody:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/google/android/talk/PublicIntentDispatcher$4;->val$needLogin:Z

    #calls: Lcom/google/android/talk/PublicIntentDispatcher;->openChat(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Z)V
    invoke-static/range {v0 .. v5}, Lcom/google/android/talk/PublicIntentDispatcher;->access$800(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method
