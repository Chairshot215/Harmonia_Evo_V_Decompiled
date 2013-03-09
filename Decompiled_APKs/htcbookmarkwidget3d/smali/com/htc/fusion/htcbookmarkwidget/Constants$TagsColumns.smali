.class public Lcom/htc/fusion/htcbookmarkwidget/Constants$TagsColumns;
.super Ljava/lang/Object;
.source "Constants.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fusion/htcbookmarkwidget/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TagsColumns"
.end annotation


# static fields
.field public static final CREATED:Ljava/lang/String; = "created"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final POSITION:Ljava/lang/String; = "position"

.field public static final VISITS:Ljava/lang/String; = "visits"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
