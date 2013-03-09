.class public Lcom/android/htccontacts/widget/title/DetailHeaderBar$LinkType;
.super Ljava/lang/Object;
.source "DetailHeaderBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/widget/title/DetailHeaderBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LinkType"
.end annotation


# static fields
.field public static final LINK:I = 0x0

.field public static final UNLINK:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/widget/title/DetailHeaderBar;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/widget/title/DetailHeaderBar;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/htccontacts/widget/title/DetailHeaderBar$LinkType;->this$0:Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
