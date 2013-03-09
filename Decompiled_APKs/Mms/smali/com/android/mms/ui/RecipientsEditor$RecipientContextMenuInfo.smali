.class Lcom/android/mms/ui/RecipientsEditor$RecipientContextMenuInfo;
.super Ljava/lang/Object;
.source "RecipientsEditor.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/RecipientsEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RecipientContextMenuInfo"
.end annotation


# instance fields
.field final recipient:Lcom/android/mms/ui/RecipientList$Recipient;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/RecipientList$Recipient;)V
    .locals 0
    .parameter "r"

    .prologue
    .line 485
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 486
    iput-object p1, p0, Lcom/android/mms/ui/RecipientsEditor$RecipientContextMenuInfo;->recipient:Lcom/android/mms/ui/RecipientList$Recipient;

    .line 487
    return-void
.end method
