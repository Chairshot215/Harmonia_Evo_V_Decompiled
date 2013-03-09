.class final Lcom/android/ex/chips/Queries$2;
.super Lcom/android/ex/chips/Queries$Query;
.source "Queries.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/chips/Queries;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>([Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/android/ex/chips/Queries$Query;-><init>([Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "res"
    .parameter "type"
    .parameter "label"

    .prologue
    .line 61
    invoke-static {p1, p2, p3}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
