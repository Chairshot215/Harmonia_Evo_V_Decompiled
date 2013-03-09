.class public Lcom/futuredial/config/Constants$XMLKeyword;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/config/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XMLKeyword"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/futuredial/config/Constants$XMLKeyword$ATKeyword;
    }
.end annotation


# static fields
.field public static final KEYWORD_AT:Ljava/lang/String; = "at"

.field public static final KEYWORD_CALLBACK:Ljava/lang/String; = "callback"

.field public static final KEYWORD_LOCATION:Ljava/lang/String; = "location"

.field public static final KEYWORD_OPERATION:Ljava/lang/String; = "operation"

.field public static final KEYWORD_PARSER:Ljava/lang/String; = "parser"

.field public static final KEYWORD_POLICY:Ljava/lang/String; = "policy"

.field public static final KEYWORD_POLICY_ID:Ljava/lang/String; = "id"

.field public static final KEYWORD_PORTCLOSE:Ljava/lang/String; = "portclose"

.field public static final KEYWORD_PORTOPEN:Ljava/lang/String; = "portopen"

.field public static final KEYWORD_READ:Ljava/lang/String; = "read"

.field public static final KEYWORD_SLEEP:Ljava/lang/String; = "sleep"

.field public static final NODE_CMD:Ljava/lang/String; = "cmd"

.field public static final NODE_OPERATION:Ljava/lang/String; = "operation"

.field public static final NODE_WAITPARSER:Ljava/lang/String; = "waitparser"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method
