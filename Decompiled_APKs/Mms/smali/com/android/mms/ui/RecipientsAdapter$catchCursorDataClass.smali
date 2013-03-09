.class Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;
.super Ljava/lang/Object;
.source "RecipientsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/RecipientsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "catchCursorDataClass"
.end annotation


# instance fields
.field public catch_name:Ljava/lang/String;

.field public catch_number:Ljava/lang/String;

.field public catch_pos:I

.field final synthetic this$0:Lcom/android/mms/ui/RecipientsAdapter;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/RecipientsAdapter;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "pos"
    .parameter "name"
    .parameter "number"

    .prologue
    const/4 v1, 0x0

    .line 229
    iput-object p1, p0, Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;->this$0:Lcom/android/mms/ui/RecipientsAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 230
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;->catch_pos:I

    .line 231
    iput-object v1, p0, Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;->catch_name:Ljava/lang/String;

    .line 232
    iput-object v1, p0, Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;->catch_number:Ljava/lang/String;

    .line 234
    if-ltz p2, :cond_0

    iput p2, p0, Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;->catch_pos:I

    .line 235
    :cond_0
    if-eqz p3, :cond_1

    iput-object p3, p0, Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;->catch_name:Ljava/lang/String;

    .line 236
    :cond_1
    if-eqz p4, :cond_2

    iput-object p4, p0, Lcom/android/mms/ui/RecipientsAdapter$catchCursorDataClass;->catch_number:Ljava/lang/String;

    .line 238
    :cond_2
    return-void
.end method
