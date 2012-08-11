//
//  PositionTestCase.m
//  ChessKit
//
//  Created by Austen Green on 4/28/12.
//  Copyright (c) 2012 Austen Green Consulting. All rights reserved.
//

#import "PositionTestCase.h"
#import "ChessKit.h"

@implementation PositionTestCase

- (void)testImmutableVSMutableEquality
{
    CKPosition *immutable = [CKPosition standardPosition];
    CKPosition *mutable = [CKMutablePosition standardPosition];
    
    STAssertEqualObjects(immutable, mutable, nil);
}

- (void)testBlackEnPassant
{
    NSURL *url = [[NSBundle bundleForClass:[self class]] URLForResource:@"TestBlackEnPassant" withExtension:@"pgn"];
}

- (void)testPinnedDisambiguation
{
    // The following game fails on pinned disambiguation on Black's 18th move.  TODO: Look into this 
//    [Event "World Blitz Final"]
//    [Site "Astana KAZ"]
//    [Date "2012.07.10"]
//    [Round "23"]
//    [White "Andreikin,D"]
//    [Black "Grischuk,A"]
//    [Result "0-1"]
//    [WhiteTitle "GM"]
//    [BlackTitle "GM"]
//    [WhiteElo "2700"]
//    [BlackElo "2763"]
//    [ECO "E90"]
//    [Opening "King's Indian"]
//    [Variation "5.Nf3"]
//    [WhiteFideId "4158814"]
//    [BlackFideId "4126025"]
//    [EventDate "2012.07.01"]
//    
//    1. c4 g6 2. d4 Nf6 3. Nc3 Bg7 4. e4 d6 5. Nf3 O-O 6. h3 e5 7. dxe5 dxe5 8. Qxd8
//    Rxd8 9. Bg5 Na6 10. Be2 h6 11. Be3 Re8 12. O-O-O c6 13. Rd6 Nd7 14. Rhd1 Nf8 15.
//    Rd8 Rxd8 16. Rxd8 Nc7 17. c5 Ne6 18. Rd6 Nd7 19. b4 a5 20. a3 axb4 21. axb4 Bf8
//    22. Rd2 Kg7 23. Bc4 Nc7 24. Ra2 Rxa2 25. Nxa2 Be7 26. Kc2 f6 27. Nc1 Nf8 28. Nb3
//    Nfe6 29. Ne1 f5 30. exf5 gxf5 31. Nd3 Bf6 32. f3 Nd5 33. Bd2 e4 34. fxe4 fxe4
//    35. Ndc1 e3 36. Be1 Nef4 37. Bxd5 cxd5 38. Bc3 Bf5+ 39. Kb2 e2 40. Nd4 e1=Q 41.
//    Bxe1 Bxd4+ 42. Bc3 Bxc3+ 43. Kxc3 Nxg2 44. Kd4 Bxh3 45. Kxd5 Ne3+ 46. Kd6 Bg2
//    47. Nd3 Nc4+ 48. Kc7 Kf6 49. b5 Be4 50. Nf2 Bf3 51. c6 bxc6 52. bxc6 Ne5 53. Kd6
//    Nxc6 54. Nd3 Ne7 55. Ne1 Be4 56. Kc5 Ke5 0-1
}

@end
