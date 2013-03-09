.class Lcom/google/android/talk/BuddyListCombo$AccountSpinnerAdapter;
.super Landroid/widget/ArrayAdapter;
.source "BuddyListCombo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/BuddyListCombo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccountSpinnerAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/google/android/talk/TalkApp$AccountInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/BuddyListCombo;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/BuddyListCombo;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    const v0, 0x7f040005

    .line 1218
    iput-object p1, p0, Lcom/google/android/talk/BuddyListCombo$AccountSpinnerAdapter;->this$0:Lcom/google/android/talk/BuddyListCombo;

    .line 1219
    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 1220
    invoke-virtual {p0, v0}, Lcom/google/android/talk/BuddyListCombo$AccountSpinnerAdapter;->setDropDownViewResource(I)V

    .line 1221
    return-void
.end method
