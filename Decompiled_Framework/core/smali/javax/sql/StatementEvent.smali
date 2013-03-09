.class public Ljavax/sql/StatementEvent;
.super Ljava/util/EventObject;
.source "StatementEvent.java"


# static fields
.field private static final serialVersionUID:J = -0x7043f072dddb28bbL


# instance fields
.field private exception:Ljava/sql/SQLException;

.field private statement:Ljava/sql/PreparedStatement;


# direct methods
.method public constructor <init>(Ljavax/sql/PooledConnection;Ljava/sql/PreparedStatement;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljavax/sql/StatementEvent;-><init>(Ljavax/sql/PooledConnection;Ljava/sql/PreparedStatement;Ljava/sql/SQLException;)V

    return-void
.end method

.method public constructor <init>(Ljavax/sql/PooledConnection;Ljava/sql/PreparedStatement;Ljava/sql/SQLException;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Ljavax/sql/StatementEvent;->statement:Ljava/sql/PreparedStatement;

    iput-object p3, p0, Ljavax/sql/StatementEvent;->exception:Ljava/sql/SQLException;

    return-void
.end method


# virtual methods
.method public getSQLException()Ljava/sql/SQLException;
    .locals 1

    iget-object v0, p0, Ljavax/sql/StatementEvent;->exception:Ljava/sql/SQLException;

    return-object v0
.end method

.method public getStatement()Ljava/sql/PreparedStatement;
    .locals 1

    iget-object v0, p0, Ljavax/sql/StatementEvent;->statement:Ljava/sql/PreparedStatement;

    return-object v0
.end method
