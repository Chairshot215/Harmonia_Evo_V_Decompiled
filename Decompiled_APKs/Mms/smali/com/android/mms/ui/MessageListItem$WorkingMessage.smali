.class Lcom/android/mms/ui/MessageListItem$WorkingMessage;
.super Ljava/lang/Object;
.source "MessageListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WorkingMessage"
.end annotation


# static fields
.field public static final AUDIO:I = 0x1

.field public static final IMAGE:I = 0x0

.field public static final SLIDESHOW:I = 0x5

.field public static final TEXT:I = 0x6

.field public static final VCALENDAR:I = 0x4

.field public static final VCARD:I = 0x3

.field public static final VIDEO:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListItem;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$WorkingMessage;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
