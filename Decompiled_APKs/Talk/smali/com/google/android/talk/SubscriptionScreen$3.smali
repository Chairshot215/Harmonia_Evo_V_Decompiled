.class Lcom/google/android/talk/SubscriptionScreen$3;
.super Ljava/lang/Object;
.source "SubscriptionScreen.java"

# interfaces
.implements Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/SubscriptionScreen;->loadAvatar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/SubscriptionScreen;

.field final synthetic val$contactInfoQuery:Lcom/google/android/talk/ContactInfoQuery;


# direct methods
.method constructor <init>(Lcom/google/android/talk/SubscriptionScreen;Lcom/google/android/talk/ContactInfoQuery;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/google/android/talk/SubscriptionScreen$3;->this$0:Lcom/google/android/talk/SubscriptionScreen;

    iput-object p2, p0, Lcom/google/android/talk/SubscriptionScreen$3;->val$contactInfoQuery:Lcom/google/android/talk/ContactInfoQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactInfoLoaded()V
    .locals 3

    .prologue
    .line 125
    iget-object v1, p0, Lcom/google/android/talk/SubscriptionScreen$3;->this$0:Lcom/google/android/talk/SubscriptionScreen;

    invoke-virtual {v1}, Lcom/google/android/talk/SubscriptionScreen;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/google/android/talk/SubscriptionScreen$3;->val$contactInfoQuery:Lcom/google/android/talk/ContactInfoQuery;

    invoke-virtual {v1}, Lcom/google/android/talk/ContactInfoQuery;->getAvatar()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 128
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/google/android/talk/SubscriptionScreen$3;->this$0:Lcom/google/android/talk/SubscriptionScreen;

    iget-object v2, p0, Lcom/google/android/talk/SubscriptionScreen$3;->this$0:Lcom/google/android/talk/SubscriptionScreen;

    #calls: Lcom/google/android/talk/SubscriptionScreen;->makeDialog(Landroid/graphics/drawable/Drawable;)Landroid/app/Dialog;
    invoke-static {v2, v0}, Lcom/google/android/talk/SubscriptionScreen;->access$400(Lcom/google/android/talk/SubscriptionScreen;Landroid/graphics/drawable/Drawable;)Landroid/app/Dialog;

    move-result-object v2

    #setter for: Lcom/google/android/talk/SubscriptionScreen;->mDialog:Landroid/app/Dialog;
    invoke-static {v1, v2}, Lcom/google/android/talk/SubscriptionScreen;->access$302(Lcom/google/android/talk/SubscriptionScreen;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 129
    iget-object v1, p0, Lcom/google/android/talk/SubscriptionScreen$3;->this$0:Lcom/google/android/talk/SubscriptionScreen;

    #getter for: Lcom/google/android/talk/SubscriptionScreen;->mDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/google/android/talk/SubscriptionScreen;->access$300(Lcom/google/android/talk/SubscriptionScreen;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 131
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method
