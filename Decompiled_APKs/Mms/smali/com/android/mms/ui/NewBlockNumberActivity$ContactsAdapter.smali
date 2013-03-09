.class Lcom/android/mms/ui/NewBlockNumberActivity$ContactsAdapter;
.super Lcom/android/mms/ui/RecipientsAdapter;
.source "NewBlockNumberActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/NewBlockNumberActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContactsAdapter"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 254
    invoke-direct {p0, p1}, Lcom/android/mms/ui/RecipientsAdapter;-><init>(Landroid/content/Context;)V

    .line 255
    return-void
.end method


# virtual methods
.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "cursor"

    .prologue
    .line 259
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, phoneNumber:Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
