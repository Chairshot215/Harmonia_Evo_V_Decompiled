.class public Lcom/htc/android/mail/eassvc/common/EASContact$UnsupportedItem;
.super Ljava/lang/Object;
.source "EASContact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/common/EASContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnsupportedItem"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "value"

    .prologue
    .line 80
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/common/EASContact$UnsupportedItem;->name:Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lcom/htc/android/mail/eassvc/common/EASContact$UnsupportedItem;->value:Ljava/lang/String;

    .line 83
    return-void
.end method
