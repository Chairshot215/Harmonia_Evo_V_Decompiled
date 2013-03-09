.class Lcom/google/android/talk/AddBuddyScreen$2;
.super Ljava/lang/Object;
.source "AddBuddyScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/AddBuddyScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/AddBuddyScreen;


# direct methods
.method constructor <init>(Lcom/google/android/talk/AddBuddyScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/google/android/talk/AddBuddyScreen$2;->this$0:Lcom/google/android/talk/AddBuddyScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 210
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 218
    :goto_0
    return-void

    .line 212
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/talk/AddBuddyScreen$2;->this$0:Lcom/google/android/talk/AddBuddyScreen;

    invoke-virtual {v0}, Lcom/google/android/talk/AddBuddyScreen;->inviteBuddies()V

    goto :goto_0

    .line 215
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/talk/AddBuddyScreen$2;->this$0:Lcom/google/android/talk/AddBuddyScreen;

    invoke-virtual {v0}, Lcom/google/android/talk/AddBuddyScreen;->finish()V

    goto :goto_0

    .line 210
    :pswitch_data_0
    .packed-switch 0x7f100015
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
