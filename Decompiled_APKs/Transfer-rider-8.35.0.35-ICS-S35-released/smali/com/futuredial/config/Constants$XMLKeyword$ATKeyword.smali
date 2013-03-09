.class public Lcom/futuredial/config/Constants$XMLKeyword$ATKeyword;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/config/Constants$XMLKeyword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ATKeyword"
.end annotation


# static fields
.field public static final AT_COUNT:Ljava/lang/String; = "count"

.field public static final AT_LST_MATCH:Ljava/lang/String; = "lst_match"

.field public static final AT_REG_MATCH:Ljava/lang/String; = "reg_match"

.field public static final AT_REG_SPLIT:Ljava/lang/String; = "reg_split"

.field public static final AT_RESULT:Ljava/lang/String; = "result"

.field public static final AT_TIMEOUT:Ljava/lang/String; = "timeout"


# instance fields
.field final synthetic this$0:Lcom/futuredial/config/Constants$XMLKeyword;


# direct methods
.method public constructor <init>(Lcom/futuredial/config/Constants$XMLKeyword;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/futuredial/config/Constants$XMLKeyword$ATKeyword;->this$0:Lcom/futuredial/config/Constants$XMLKeyword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
